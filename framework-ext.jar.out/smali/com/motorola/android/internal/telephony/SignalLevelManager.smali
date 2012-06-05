.class public Lcom/motorola/android/internal/telephony/SignalLevelManager;
.super Ljava/lang/Object;
.source "SignalLevelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;,
        Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;,
        Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final RADIOTECH_ASUNUM:I = 0x3

.field private static final RADIOTECH_CDMA:I = 0x0

.field private static final RADIOTECH_EVDO:I = 0x1

.field private static final RADIOTECH_GSM:I = 0x3

.field private static final RADIOTECH_LTE:I = 0x2

.field private static final RADIOTECH_NUM:I = 0x5

.field private static final RADIOTECH_UMTS:I = 0x4

.field public static final SL_FROM_FILE_SYSTEM:I = 0x1

.field public static final SL_FROM_XML:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SignalLevelManager"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/motorola/android/internal/telephony/SignalLevelManager;


# instance fields
.field private isSLFileLoaded:Z

.field private mNumberOfAsuLevels:I

.field private mNumberOfBars:I

.field private mNumberOfLTEBars:I

.field private mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

.field private mSLFileSource:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFileSource:I

    .line 51
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->isSLFileLoaded:Z

    .line 53
    iput v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfBars:I

    .line 54
    iput v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfLTEBars:I

    .line 55
    iput v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfAsuLevels:I

    .line 134
    sput-object p1, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mContext:Landroid/content/Context;

    .line 135
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->isSLFileLoaded:Z

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    .line 137
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->loadSignalLevelFile()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->isSLFileLoaded:Z

    .line 140
    :cond_0
    return-void
.end method

.method private get3GPP2AsuLevel(IIII)I
    .locals 8
    .parameter "numBars"
    .parameter "dbm"
    .parameter "ecSnr"
    .parameter "radioTech"

    .prologue
    const/16 v7, 0x63

    .line 583
    const/16 v1, 0x63

    .line 584
    .local v1, asuLevel:I
    const/4 v0, 0x0

    .line 586
    .local v0, alInfo:Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v4, v4, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mAsuInfoTable:[Ljava/util/HashMap;

    aget-object v4, v4, p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 587
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v4, v4, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mAsuInfoTable:[Ljava/util/HashMap;

    aget-object v4, v4, p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #alInfo:Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;
    check-cast v0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;

    .line 592
    .restart local v0       #alInfo:Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;
    :goto_0
    if-eqz v0, :cond_1

    .line 593
    iget-object v4, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;->mDbmLevel:[I

    iget-object v5, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;->mDbmValue:[I

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getAsuLevelNum(II[I[I)I

    move-result v2

    .line 595
    .local v2, dbm_asuLevel:I
    iget-object v4, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;->mEcSnrLevel:[I

    iget-object v5, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;->mEcSnrValue:[I

    invoke-direct {p0, p1, p3, v4, v5}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getAsuLevelNum(II[I[I)I

    move-result v3

    .line 600
    .local v3, ecSnr_asuLevel:I
    if-eq v2, v7, :cond_0

    if-ne v3, v7, :cond_3

    .line 601
    :cond_0
    const/16 v1, 0x63

    .line 608
    .end local v2           #dbm_asuLevel:I
    .end local v3           #ecSnr_asuLevel:I
    :cond_1
    :goto_1
    return v1

    .line 589
    :cond_2
    const-string v4, "SignalLevelManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setLevels:get3GPP2AsuLevel: Bars="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "rule not avaliable."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 603
    .restart local v2       #dbm_asuLevel:I
    .restart local v3       #ecSnr_asuLevel:I
    :cond_3
    if-ge v2, v3, :cond_4

    move v1, v2

    :goto_2
    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method private get3GPP2SignalLevel(IILandroid/telephony/SignalStrength;)I
    .locals 10
    .parameter "numBars"
    .parameter "radioTech"
    .parameter "signalStrength"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 485
    const/4 v4, 0x0

    .line 486
    .local v4, signalLevel:I
    const/4 v5, 0x0

    .line 489
    .local v5, slInfo:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    if-ne p2, v9, :cond_1

    .line 490
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 491
    .local v0, dbm:I
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v2

    .line 497
    .local v2, ecSnr:I
    :goto_0
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v7, v7, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    aget-object v7, v7, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 498
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v6, v6, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    aget-object v6, v6, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #slInfo:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    check-cast v5, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;

    .line 511
    .restart local v5       #slInfo:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    if-eqz v5, :cond_0

    .line 512
    iget-object v6, v5, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mSigStrLevel:[I

    invoke-direct {p0, p1, v0, v6}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getSignalLevelNum(II[I)I

    move-result v1

    .line 513
    .local v1, dbm_signalLevel:I
    iget-object v6, v5, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mEcSnrLevel:[I

    invoke-direct {p0, p1, v2, v6}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getSignalLevelNum(II[I)I

    move-result v3

    .line 516
    .local v3, ecSnr_signalLevel:I
    if-ge v1, v3, :cond_4

    move v4, v1

    .end local v1           #dbm_signalLevel:I
    .end local v3           #ecSnr_signalLevel:I
    :cond_0
    :goto_1
    move v6, v4

    .line 520
    :goto_2
    return v6

    .line 493
    .end local v0           #dbm:I
    .end local v2           #ecSnr:I
    :cond_1
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 494
    .restart local v0       #dbm:I
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .restart local v2       #ecSnr:I
    goto :goto_0

    .line 500
    :cond_2
    if-ne p2, v9, :cond_3

    .line 504
    invoke-direct {p0, p1, v6, p3}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->get3GPP2SignalLevel(IILandroid/telephony/SignalStrength;)I

    move-result v6

    goto :goto_2

    .line 506
    :cond_3
    const-string v7, "SignalLevelManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CDMA signal mapping num="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rule not avaliable."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .restart local v1       #dbm_signalLevel:I
    .restart local v3       #ecSnr_signalLevel:I
    :cond_4
    move v4, v3

    .line 516
    goto :goto_1
.end method

.method private getAsuLevelNum(II[I[I)I
    .locals 3
    .parameter "numBars"
    .parameter "sigStrength"
    .parameter "asuLevel"
    .parameter "asuValue"

    .prologue
    .line 409
    const/16 v0, 0x63

    .line 411
    .local v0, asuMapLevel:I
    const/4 v2, 0x0

    aget v2, p3, v2

    if-ge p2, v2, :cond_1

    .line 412
    const/16 v0, 0x63

    .line 421
    :cond_0
    :goto_0
    return v0

    .line 414
    :cond_1
    add-int/lit8 v1, p1, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 415
    aget v2, p3, v1

    if-lt p2, v2, :cond_2

    .line 416
    aget v0, p4, v1

    .line 417
    goto :goto_0

    .line 414
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private getCdmaAsuLevel(ILandroid/telephony/SignalStrength;)I
    .locals 3
    .parameter "numBars"
    .parameter "signalStrength"

    .prologue
    .line 658
    invoke-virtual {p2, p1}, Landroid/telephony/SignalStrength;->setCdmaAsuMaxLevel(I)V

    .line 659
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->get3GPP2AsuLevel(IIII)I

    move-result v0

    return v0
.end method

.method private getCdmaSignalLevel(ILandroid/telephony/SignalStrength;)I
    .locals 1
    .parameter "numBars"
    .parameter "signalStrength"

    .prologue
    .line 632
    invoke-virtual {p2, p1}, Landroid/telephony/SignalStrength;->setCdmaMaxLevel(I)V

    .line 633
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->get3GPP2SignalLevel(IILandroid/telephony/SignalStrength;)I

    move-result v0

    return v0
.end method

.method private getEvdoAsuLevel(ILandroid/telephony/SignalStrength;)I
    .locals 3
    .parameter "numBars"
    .parameter "signalStrength"

    .prologue
    .line 667
    invoke-virtual {p2, p1}, Landroid/telephony/SignalStrength;->setEvdoAsuMaxLevel(I)V

    .line 668
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->get3GPP2AsuLevel(IIII)I

    move-result v0

    return v0
.end method

.method private getEvdoSignalLevel(ILandroid/telephony/SignalStrength;)I
    .locals 1
    .parameter "numBars"
    .parameter "signalStrength"

    .prologue
    .line 640
    invoke-virtual {p2, p1}, Landroid/telephony/SignalStrength;->setEvdoMaxLevel(I)V

    .line 641
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->get3GPP2SignalLevel(IILandroid/telephony/SignalStrength;)I

    move-result v0

    return v0
.end method

.method private getGsmSignalLevel(ILandroid/telephony/SignalStrength;)I
    .locals 1
    .parameter "numBars"
    .parameter "signalStrength"

    .prologue
    .line 615
    invoke-virtual {p2, p1}, Landroid/telephony/SignalStrength;->setGsmMaxLevel(I)V

    .line 616
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->get3GPPSignalLevel(IILandroid/telephony/SignalStrength;)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/motorola/android/internal/telephony/SignalLevelManager;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mInstance:Lcom/motorola/android/internal/telephony/SignalLevelManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/telephony/SignalLevelManager;
    .locals 1
    .parameter "c"

    .prologue
    .line 143
    sget-object v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mInstance:Lcom/motorola/android/internal/telephony/SignalLevelManager;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 144
    new-instance v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/SignalLevelManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mInstance:Lcom/motorola/android/internal/telephony/SignalLevelManager;

    .line 148
    :cond_0
    :goto_0
    sget-object v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mInstance:Lcom/motorola/android/internal/telephony/SignalLevelManager;

    return-object v0

    .line 145
    :cond_1
    if-eqz p0, :cond_0

    .line 146
    sput-object p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getLTESignalLevel(ILandroid/telephony/SignalStrength;)I
    .locals 11
    .parameter "numBars"
    .parameter "signalStrength"

    .prologue
    const/4 v10, 0x2

    .line 528
    const/4 v6, 0x0

    .line 529
    .local v6, signalLevel:I
    const/4 v7, 0x0

    .line 530
    .local v7, slInfo:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v0

    .line 531
    .local v0, rsrp:I
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v2

    .line 532
    .local v2, rsrq:I
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v4

    .line 534
    .local v4, rssnr:I
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v8, v8, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    aget-object v8, v8, v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 535
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v8, v8, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    aget-object v8, v8, v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #slInfo:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    check-cast v7, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;

    .line 541
    .restart local v7       #slInfo:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    if-eqz v7, :cond_0

    .line 542
    const/4 v1, 0x0

    .line 543
    .local v1, rsrp_signalLevel:I
    const/4 v3, 0x0

    .line 544
    .local v3, rsrq_signalLevel:I
    const/4 v5, 0x0

    .line 546
    .local v5, rssnr_signalLevel:I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_2

    .line 547
    const/4 v1, 0x0

    .line 551
    :goto_0
    iget-object v8, v7, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mEcSnrLevel:[I

    if-eqz v8, :cond_5

    .line 552
    const v8, 0x7fffffff

    if-ne v4, v8, :cond_3

    .line 554
    move v5, p1

    .line 560
    :goto_1
    if-ge v1, v5, :cond_4

    move v6, v1

    .end local v1           #rsrp_signalLevel:I
    .end local v3           #rsrq_signalLevel:I
    .end local v5           #rssnr_signalLevel:I
    :cond_0
    :goto_2
    move v8, v6

    .line 575
    :goto_3
    return v8

    .line 537
    :cond_1
    const-string v8, "SignalLevelManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setLevels:get3GPP2SignalLevel: Bars="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "rule not avaliable."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v8, 0x0

    goto :goto_3

    .line 549
    .restart local v1       #rsrp_signalLevel:I
    .restart local v3       #rsrq_signalLevel:I
    .restart local v5       #rssnr_signalLevel:I
    :cond_2
    iget-object v8, v7, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mSigStrLevel:[I

    invoke-direct {p0, p1, v0, v8}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getSignalLevelNum(II[I)I

    move-result v1

    goto :goto_0

    .line 556
    :cond_3
    iget-object v8, v7, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mEcSnrLevel:[I

    invoke-direct {p0, p1, v4, v8}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getSignalLevelNum(II[I)I

    move-result v5

    goto :goto_1

    :cond_4
    move v6, v5

    .line 560
    goto :goto_2

    .line 562
    :cond_5
    iget-object v8, v7, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mAsuLevel:[I

    if-eqz v8, :cond_7

    .line 564
    iget-object v8, v7, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mAsuLevel:[I

    invoke-direct {p0, p1, v2, v8}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getSignalLevelNum(II[I)I

    move-result v3

    .line 567
    if-ge v1, v3, :cond_6

    move v6, v1

    :goto_4
    goto :goto_2

    :cond_6
    move v6, v3

    goto :goto_4

    .line 571
    :cond_7
    move v6, v1

    goto :goto_2
.end method

.method private getLteAsuLevel(ILandroid/telephony/SignalStrength;)I
    .locals 3
    .parameter "numBars"
    .parameter "signalStrength"

    .prologue
    .line 676
    invoke-virtual {p2, p1}, Landroid/telephony/SignalStrength;->setLteAsuMaxLevel(I)V

    .line 677
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->get3GPP2AsuLevel(IIII)I

    move-result v0

    return v0
.end method

.method private getLteSignalLevel(ILandroid/telephony/SignalStrength;)I
    .locals 1
    .parameter "numBars"
    .parameter "signalStrength"

    .prologue
    .line 648
    invoke-virtual {p2, p1}, Landroid/telephony/SignalStrength;->setLteMaxLevel(I)V

    .line 650
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getLTESignalLevel(ILandroid/telephony/SignalStrength;)I

    move-result v0

    return v0
.end method

.method private getSignalLevelNum(II[I)I
    .locals 3
    .parameter "numBars"
    .parameter "sigStrength"
    .parameter "sigLevel"

    .prologue
    .line 389
    const/4 v1, 0x0

    .line 391
    .local v1, signalLevel:I
    const/4 v2, 0x0

    aget v2, p3, v2

    if-ge p2, v2, :cond_1

    .line 392
    const/4 v1, 0x0

    .line 401
    :cond_0
    :goto_0
    return v1

    .line 394
    :cond_1
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 395
    aget v2, p3, v0

    if-lt p2, v2, :cond_2

    .line 396
    add-int/lit8 v1, v0, 0x1

    .line 397
    goto :goto_0

    .line 394
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private getUmtsSignalLevel(ILandroid/telephony/SignalStrength;)I
    .locals 1
    .parameter "numBars"
    .parameter "signalStrength"

    .prologue
    .line 623
    invoke-virtual {p2, p1}, Landroid/telephony/SignalStrength;->setUmtsMaxLevel(I)V

    .line 624
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->get3GPPSignalLevel(IILandroid/telephony/SignalStrength;)I

    move-result v0

    return v0
.end method

.method private loadSignalLevelFile()V
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFileSource:I

    packed-switch v0, :pswitch_data_0

    .line 201
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->loadSignalLevelFileFromXml()V

    .line 204
    :goto_0
    return-void

    .line 196
    :pswitch_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->loadSignalLevelFileFromFileSystem()V

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private loadSignalLevelFileFromFileSystem()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method private loadSignalLevelFileFromXml()V
    .locals 53

    .prologue
    .line 221
    const/16 v52, 0x0

    .line 222
    .local v52, stream:Ljava/io/FileInputStream;
    sget-object v2, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    .line 223
    .local v50, r:Landroid/content/res/Resources;
    const v2, 0x10f000d

    move-object/from16 v0, v50

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v49

    .line 224
    .local v49, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v46, 0x0

    .line 225
    .local v46, numberOfSignalEntries:I
    const/16 v43, 0x0

    .line 226
    .local v43, numberOfAsuEntries:I
    const/16 v48, 0x0

    .line 227
    .local v48, parsedSignalEntries:I
    const/16 v47, 0x0

    .line 232
    .local v47, parsedAsuEntries:I
    :try_start_0
    const-string v2, "SignalLevelFile"

    move-object/from16 v0, v49

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 233
    const/4 v2, 0x0

    const-string v3, "NumberOfBars"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 234
    .local v44, numberOfBarsString:Ljava/lang/String;
    const-string v2, "auto"

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 236
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfBars:I

    .line 244
    :goto_0
    const/4 v2, 0x0

    const-string v3, "NumberOfLTEBars"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 245
    .local v45, numberOfLTEBarsString:Ljava/lang/String;
    if-eqz v45, :cond_0

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 246
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfLTEBars:I

    .line 248
    :cond_0
    const/4 v2, 0x0

    const-string v3, "NumberOfAsuLevels"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfAsuLevels:I

    .line 250
    const/4 v2, 0x0

    const-string v3, "NumberOfSignalEntries"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    .line 252
    const/4 v2, 0x0

    const-string v3, "NumberOfAsuEntries"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    .line 256
    :cond_1
    :goto_1
    invoke-static/range {v49 .. v49}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 257
    invoke-interface/range {v49 .. v49}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v42

    .line 258
    .local v42, infoName:Ljava/lang/String;
    if-nez v42, :cond_8

    .line 259
    move/from16 v0, v48

    move/from16 v1, v46

    if-ne v0, v1, :cond_2

    move/from16 v0, v47

    move/from16 v1, v43

    if-eq v0, v1, :cond_3

    .line 261
    :cond_2
    const-string v2, "SignalLevelManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error Parsing SignalLevel File: SignalLevelInfo "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " defined, "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " parsed. AsuLevelInfo "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " defined, "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " parsed."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 370
    :cond_3
    move-object/from16 v0, v49

    instance-of v2, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_4

    .line 371
    check-cast v49, Landroid/content/res/XmlResourceParser;

    .end local v49           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v49 .. v49}, Landroid/content/res/XmlResourceParser;->close()V

    .line 374
    :cond_4
    if-eqz v52, :cond_5

    .line 375
    :try_start_1
    throw v52
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 381
    .end local v42           #infoName:Ljava/lang/String;
    .end local v44           #numberOfBarsString:Ljava/lang/String;
    .end local v45           #numberOfLTEBarsString:Ljava/lang/String;
    :cond_5
    :goto_2
    return-void

    .line 239
    .restart local v44       #numberOfBarsString:Ljava/lang/String;
    .restart local v49       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    :try_start_2
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfBars:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 240
    :catch_0
    move-exception v41

    .line 241
    .local v41, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfBars:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 367
    .end local v41           #e:Ljava/lang/NumberFormatException;
    .end local v44           #numberOfBarsString:Ljava/lang/String;
    :catch_1
    move-exception v41

    .line 368
    .local v41, e:Ljava/lang/Exception;
    :try_start_4
    const-string v2, "SignalLevelManager"

    const-string v3, "Got exception while loading SignalLevel file."

    move-object/from16 v0, v41

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 370
    move-object/from16 v0, v49

    instance-of v2, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_7

    .line 371
    check-cast v49, Landroid/content/res/XmlResourceParser;

    .end local v49           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v49 .. v49}, Landroid/content/res/XmlResourceParser;->close()V

    .line 374
    :cond_7
    if-eqz v52, :cond_5

    .line 375
    :try_start_5
    throw v52
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 377
    .end local v41           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    goto :goto_2

    .line 267
    .restart local v42       #infoName:Ljava/lang/String;
    .restart local v44       #numberOfBarsString:Ljava/lang/String;
    .restart local v45       #numberOfLTEBarsString:Ljava/lang/String;
    .restart local v49       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_8
    :try_start_6
    const-string v2, "SignalLevelInfo"

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 268
    const/4 v2, 0x0

    const-string v3, "RadioType"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->parseRadioType(Ljava/lang/String;)I

    move-result v51

    .line 269
    .local v51, radioTech:I
    const/4 v2, 0x0

    const-string v3, "SignalBars"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 271
    .local v4, slInfoBars:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfBars:I

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfBars:I

    if-eq v2, v4, :cond_9

    const/4 v2, 0x2

    move/from16 v0, v51

    if-ne v0, v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfLTEBars:I

    if-ne v2, v4, :cond_a

    .line 274
    :cond_9
    const/4 v2, 0x3

    move/from16 v0, v51

    if-ne v0, v2, :cond_b

    .line 275
    const/4 v2, 0x0

    const-string v3, "AsuLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, asuLevel:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "OemSigStrLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 278
    .local v6, oemSigstrLevel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    const/4 v3, 0x3

    aget-object v8, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfSignalEntries:[I

    const/4 v3, 0x3

    aget v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v3

    .line 313
    .end local v5           #asuLevel:Ljava/lang/String;
    .end local v6           #oemSigstrLevel:Ljava/lang/String;
    :cond_a
    :goto_3
    add-int/lit8 v48, v48, 0x1

    .line 314
    goto/16 :goto_1

    .line 282
    :cond_b
    const/4 v2, 0x4

    move/from16 v0, v51

    if-ne v0, v2, :cond_e

    .line 283
    const/4 v2, 0x0

    const-string v3, "AsuLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 284
    .restart local v5       #asuLevel:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "OemSigStrLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 286
    .restart local v6       #oemSigstrLevel:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "OemBitErrLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, oemBitErrLevel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v8, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfSignalEntries:[I

    const/4 v3, 0x4

    aget v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 370
    .end local v4           #slInfoBars:I
    .end local v5           #asuLevel:Ljava/lang/String;
    .end local v6           #oemSigstrLevel:Ljava/lang/String;
    .end local v7           #oemBitErrLevel:Ljava/lang/String;
    .end local v42           #infoName:Ljava/lang/String;
    .end local v44           #numberOfBarsString:Ljava/lang/String;
    .end local v45           #numberOfLTEBarsString:Ljava/lang/String;
    .end local v51           #radioTech:I
    :catchall_0
    move-exception v2

    move-object/from16 v0, v49

    instance-of v3, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v3, :cond_c

    .line 371
    check-cast v49, Landroid/content/res/XmlResourceParser;

    .end local v49           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v49 .. v49}, Landroid/content/res/XmlResourceParser;->close()V

    .line 374
    :cond_c
    if-eqz v52, :cond_d

    .line 375
    :try_start_7
    throw v52
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 370
    :cond_d
    :goto_4
    throw v2

    .line 292
    .restart local v4       #slInfoBars:I
    .restart local v42       #infoName:Ljava/lang/String;
    .restart local v44       #numberOfBarsString:Ljava/lang/String;
    .restart local v45       #numberOfLTEBarsString:Ljava/lang/String;
    .restart local v49       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v51       #radioTech:I
    :cond_e
    if-nez v51, :cond_f

    .line 293
    const/4 v2, 0x0

    :try_start_8
    const-string v3, "DbmLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 294
    .local v12, dbmLevel:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "EcioLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 295
    .local v13, ecioLevel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v8, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;

    const/4 v11, 0x0

    move-object/from16 v9, p0

    move v10, v4

    invoke-direct/range {v8 .. v13}, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfSignalEntries:[I

    const/4 v3, 0x0

    aget v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v3

    goto/16 :goto_3

    .line 298
    .end local v12           #dbmLevel:Ljava/lang/String;
    .end local v13           #ecioLevel:Ljava/lang/String;
    :cond_f
    const/4 v2, 0x1

    move/from16 v0, v51

    if-ne v0, v2, :cond_10

    .line 299
    const/4 v2, 0x0

    const-string v3, "DbmLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 300
    .restart local v12       #dbmLevel:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "SnrLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 301
    .local v19, snrLevel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v14, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;

    const/16 v17, 0x0

    move-object/from16 v15, p0

    move/from16 v16, v4

    move-object/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfSignalEntries:[I

    const/4 v3, 0x1

    aget v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v3

    goto/16 :goto_3

    .line 304
    .end local v12           #dbmLevel:Ljava/lang/String;
    .end local v19           #snrLevel:Ljava/lang/String;
    :cond_10
    const/4 v2, 0x2

    move/from16 v0, v51

    if-ne v0, v2, :cond_a

    .line 305
    const/4 v2, 0x0

    const-string v3, "RsrqLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 306
    .local v17, rsrqLevel:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "RsrpLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 307
    .local v18, rsrpLevel:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "SnrLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 308
    .restart local v19       #snrLevel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v14, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;

    move-object/from16 v15, p0

    move/from16 v16, v4

    invoke-direct/range {v14 .. v19}, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfSignalEntries:[I

    const/4 v3, 0x2

    aget v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v3

    goto/16 :goto_3

    .line 314
    .end local v4           #slInfoBars:I
    .end local v17           #rsrqLevel:Ljava/lang/String;
    .end local v18           #rsrpLevel:Ljava/lang/String;
    .end local v19           #snrLevel:Ljava/lang/String;
    .end local v51           #radioTech:I
    :cond_11
    const-string v2, "AsuLevelInfo"

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    const/4 v2, 0x0

    const-string v3, "RadioType"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->parseRadioType(Ljava/lang/String;)I

    move-result v51

    .line 316
    .restart local v51       #radioTech:I
    const/4 v2, 0x0

    const-string v3, "AsuLevels"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 318
    .local v22, asuInfolevels:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfAsuLevels:I

    move/from16 v0, v22

    if-ne v2, v0, :cond_12

    .line 320
    if-nez v51, :cond_13

    .line 321
    const/4 v2, 0x0

    const-string v3, "DbmAsuLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 322
    .local v23, dbmAsuLevel:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "DbmAsuValue"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 323
    .local v24, dbmAsuValue:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "EcioAsuLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 324
    .local v25, ecioAsuLevel:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "EcioAsuValue"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 325
    .local v26, ecioAsuValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mAsuInfoTable:[Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v20, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;

    move-object/from16 v21, p0

    invoke-direct/range {v20 .. v26}, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfAsuEntries:[I

    const/4 v3, 0x0

    aget v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v3

    .line 349
    .end local v23           #dbmAsuLevel:Ljava/lang/String;
    .end local v24           #dbmAsuValue:Ljava/lang/String;
    .end local v25           #ecioAsuLevel:Ljava/lang/String;
    .end local v26           #ecioAsuValue:Ljava/lang/String;
    :cond_12
    :goto_5
    add-int/lit8 v47, v47, 0x1

    goto/16 :goto_1

    .line 329
    :cond_13
    const/4 v2, 0x1

    move/from16 v0, v51

    if-ne v0, v2, :cond_14

    .line 330
    const/4 v2, 0x0

    const-string v3, "DbmAsuLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 331
    .restart local v23       #dbmAsuLevel:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "DbmAsuValue"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 332
    .restart local v24       #dbmAsuValue:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "SnrAsuLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 333
    .local v32, snrAsuLevel:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "SnrAsuValue"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 334
    .local v33, snrAsuValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mAsuInfoTable:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v27, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;

    move-object/from16 v28, p0

    move/from16 v29, v22

    move-object/from16 v30, v23

    move-object/from16 v31, v24

    invoke-direct/range {v27 .. v33}, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfAsuEntries:[I

    const/4 v3, 0x1

    aget v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v3

    goto :goto_5

    .line 338
    .end local v23           #dbmAsuLevel:Ljava/lang/String;
    .end local v24           #dbmAsuValue:Ljava/lang/String;
    .end local v32           #snrAsuLevel:Ljava/lang/String;
    .end local v33           #snrAsuValue:Ljava/lang/String;
    :cond_14
    const/4 v2, 0x2

    move/from16 v0, v51

    if-ne v0, v2, :cond_12

    .line 339
    const/4 v2, 0x0

    const-string v3, "RsrpAsuLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 340
    .local v37, rsrpAsuLevel:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "RsrpAsuValue"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 341
    .local v38, rsrpAsuValue:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "SnrAsuLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 342
    .local v39, cqiAsuLevel:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "SnrAsuLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 343
    .local v40, cqiAsuValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mAsuInfoTable:[Ljava/util/HashMap;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v34, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;

    move-object/from16 v35, p0

    move/from16 v36, v22

    invoke-direct/range {v34 .. v40}, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfAsuEntries:[I

    const/4 v3, 0x2

    aget v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_5

    .line 377
    .end local v22           #asuInfolevels:I
    .end local v37           #rsrpAsuLevel:Ljava/lang/String;
    .end local v38           #rsrpAsuValue:Ljava/lang/String;
    .end local v39           #cqiAsuLevel:Ljava/lang/String;
    .end local v40           #cqiAsuValue:Ljava/lang/String;
    .end local v42           #infoName:Ljava/lang/String;
    .end local v44           #numberOfBarsString:Ljava/lang/String;
    .end local v45           #numberOfLTEBarsString:Ljava/lang/String;
    .end local v49           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v51           #radioTech:I
    :catch_3
    move-exception v3

    goto/16 :goto_4
.end method

.method private parseRadioType(Ljava/lang/String;)I
    .locals 2
    .parameter "RadioTypeString"

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, radioType:I
    const-string v1, "GSM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    const/4 v0, 0x3

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    const-string v1, "UMTS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    const/4 v0, 0x4

    goto :goto_0

    .line 182
    :cond_2
    const-string v1, "CDMA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    const/4 v0, 0x0

    goto :goto_0

    .line 184
    :cond_3
    const-string v1, "EVDO"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 185
    const/4 v0, 0x1

    goto :goto_0

    .line 186
    :cond_4
    const-string v1, "LTE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static parseSignalLevelString(ILjava/lang/String;)[I
    .locals 6
    .parameter "signalBars"
    .parameter "signalLevelString"

    .prologue
    .line 159
    new-array v1, p0, [I

    .line 160
    .local v1, signalLevel:[I
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, splitLevel:[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, p0, :cond_1

    .line 162
    const-string v3, "SignalLevelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Parsing SignalLevelFile: signalBars: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " element."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    return-object v1

    .line 165
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 166
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setMaxLevels(Landroid/telephony/SignalStrength;II)V
    .locals 0
    .parameter "signalStrength"
    .parameter "radioTech"
    .parameter "maxLevel"

    .prologue
    .line 734
    packed-switch p2, :pswitch_data_0

    .line 751
    :goto_0
    return-void

    .line 736
    :pswitch_0
    invoke-virtual {p1, p3}, Landroid/telephony/SignalStrength;->setGsmMaxLevel(I)V

    goto :goto_0

    .line 739
    :pswitch_1
    invoke-virtual {p1, p3}, Landroid/telephony/SignalStrength;->setUmtsMaxLevel(I)V

    goto :goto_0

    .line 742
    :pswitch_2
    invoke-virtual {p1, p3}, Landroid/telephony/SignalStrength;->setCdmaMaxLevel(I)V

    goto :goto_0

    .line 745
    :pswitch_3
    invoke-virtual {p1, p3}, Landroid/telephony/SignalStrength;->setEvdoMaxLevel(I)V

    goto :goto_0

    .line 748
    :pswitch_4
    invoke-virtual {p1, p3}, Landroid/telephony/SignalStrength;->setLteMaxLevel(I)V

    goto :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public get3GPPSignalLevel(IILandroid/telephony/SignalStrength;)I
    .locals 12
    .parameter "numBars"
    .parameter "radioTech"
    .parameter "signalStrength"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    .line 431
    const/4 v5, 0x0

    .line 432
    .local v5, signalLevel:I
    const/4 v6, 0x0

    .line 433
    .local v6, slInfo:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 434
    .local v0, asu:I
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->useOem()Z

    move-result v7

    .line 435
    .local v7, useOem:Z
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getGsmOemSignalStrength()I

    move-result v3

    .line 436
    .local v3, oemSigStr:I
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getGsmOemBitErrorRate()I

    move-result v2

    .line 438
    .local v2, oemBitErr:I
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v8, v8, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    aget-object v8, v8, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 439
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v8, v8, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    aget-object v8, v8, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #slInfo:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    check-cast v6, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;

    .line 451
    .restart local v6       #slInfo:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    if-eqz v6, :cond_0

    .line 455
    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 456
    if-ne p2, v10, :cond_3

    .line 457
    iget-object v8, v6, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mSigStrLevel:[I

    invoke-direct {p0, p1, v3, v8}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getSignalLevelNum(II[I)I

    move-result v5

    :cond_0
    :goto_0
    move v8, v5

    .line 477
    :goto_1
    return v8

    .line 441
    :cond_1
    if-ne p2, v11, :cond_2

    .line 444
    invoke-virtual {p0, p1, v10, p3}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->get3GPPSignalLevel(IILandroid/telephony/SignalStrength;)I

    move-result v8

    goto :goto_1

    .line 446
    :cond_2
    const-string v8, "SignalLevelManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GSM signal mapping num="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rule not avaliable."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v8, 0x0

    goto :goto_1

    .line 458
    :cond_3
    if-ne p2, v11, :cond_0

    .line 459
    iget-object v8, v6, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mSigStrLevel:[I

    invoke-direct {p0, p1, v3, v8}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getSignalLevelNum(II[I)I

    move-result v4

    .line 461
    .local v4, rscp_signalLevel:I
    iget-object v8, v6, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mEcSnrLevel:[I

    invoke-direct {p0, p1, v2, v8}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getSignalLevelNum(II[I)I

    move-result v1

    .line 465
    .local v1, ecno_signalLevel:I
    if-ge v4, v1, :cond_4

    move v5, v4

    .line 467
    :goto_2
    goto :goto_0

    :cond_4
    move v5, v1

    .line 465
    goto :goto_2

    .line 469
    .end local v1           #ecno_signalLevel:I
    .end local v4           #rscp_signalLevel:I
    :cond_5
    const/16 v8, 0x63

    if-ne v0, v8, :cond_6

    .line 470
    const/4 v5, 0x0

    goto :goto_0

    .line 472
    :cond_6
    iget-object v8, v6, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mAsuLevel:[I

    invoke-direct {p0, p1, v0, v8}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getSignalLevelNum(II[I)I

    move-result v5

    goto :goto_0
.end method

.method public getNumberOfBars()I
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfBars:I

    return v0
.end method

.method public getNumberOfLTEBars()I
    .locals 1

    .prologue
    .line 762
    iget v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfLTEBars:I

    return v0
.end method

.method public setLevels(Landroid/telephony/SignalStrength;)V
    .locals 6
    .parameter "signalStrength"

    .prologue
    const/4 v5, 0x1

    .line 689
    iget v1, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfBars:I

    .line 690
    .local v1, numberOfBars:I
    iget v2, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfLTEBars:I

    .line 691
    .local v2, numberOfLTEBars:I
    iget v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfAsuLevels:I

    .line 692
    .local v0, numberOfAsuLevels:I
    if-nez v1, :cond_0

    .line 693
    const/4 v1, 0x4

    .line 694
    const-string v3, "SignalLevelManager"

    const-string v4, "No NumberOfBars settings, set it as default 4."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_0
    if-nez v2, :cond_1

    .line 697
    move v2, v1

    .line 700
    :cond_1
    const/4 v3, 0x3

    invoke-direct {p0, p1, v3, v1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->setMaxLevels(Landroid/telephony/SignalStrength;II)V

    .line 701
    const/4 v3, 0x4

    invoke-direct {p0, p1, v3, v1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->setMaxLevels(Landroid/telephony/SignalStrength;II)V

    .line 702
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->setMaxLevels(Landroid/telephony/SignalStrength;II)V

    .line 703
    invoke-direct {p0, p1, v5, v1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->setMaxLevels(Landroid/telephony/SignalStrength;II)V

    .line 704
    const/4 v3, 0x2

    invoke-direct {p0, p1, v3, v2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->setMaxLevels(Landroid/telephony/SignalStrength;II)V

    .line 706
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-ne v3, v5, :cond_3

    .line 707
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 708
    invoke-direct {p0, v2, p1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getLteSignalLevel(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->setLteLevel(I)V

    .line 711
    invoke-direct {p0, v1, p1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getCdmaSignalLevel(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->setCdmaLevel(I)V

    .line 712
    invoke-direct {p0, v0, p1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getCdmaAsuLevel(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->setCdmaAsuLevel(I)V

    .line 727
    :goto_0
    return-void

    .line 716
    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getUmtsSignalLevel(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->setUmtsLevel(I)V

    .line 717
    invoke-direct {p0, v1, p1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getGsmSignalLevel(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->setGsmLevel(I)V

    goto :goto_0

    .line 721
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getCdmaSignalLevel(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->setCdmaLevel(I)V

    .line 722
    invoke-direct {p0, v1, p1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getEvdoSignalLevel(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->setEvdoLevel(I)V

    .line 723
    invoke-direct {p0, v0, p1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getCdmaAsuLevel(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->setCdmaAsuLevel(I)V

    .line 724
    invoke-direct {p0, v0, p1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getEvdoAsuLevel(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->setEvdoAsuLevel(I)V

    goto :goto_0
.end method
