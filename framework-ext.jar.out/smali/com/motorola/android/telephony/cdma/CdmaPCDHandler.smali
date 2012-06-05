.class public final Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;
.super Ljava/lang/Object;
.source "CdmaPCDHandler.java"


# static fields
.field private static final DBG:Z = true

.field private static isNBPCDAllowed:Z

.field private static lastNBPCDStatus:Z

.field private static mCurrentIDD:Ljava/lang/String;

.field private static mCurrentMCC:I

.field private static mCurrentSID:I

.field private static mResolvedMCC:I

.field private static needNBPCDRetry:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mMCCTable:Lcom/motorola/android/telephony/MCCTables;

.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 24
    sput v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    .line 25
    const-string v0, "011"

    sput-object v0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    .line 26
    sput v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    .line 29
    sput v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mResolvedMCC:I

    .line 31
    sput-boolean v2, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    .line 32
    sput-boolean v2, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    .line 34
    sput-boolean v2, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->needNBPCDRetry:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "CdmaPCDHandler"

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->LOG_TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    .line 37
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 38
    new-instance v0, Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/MCCTables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    .line 40
    const-string v0, "ro.cdma.nbpcd.retry"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->needNBPCDRetry:Z

    .line 41
    const-string v0, "CdmaPCDHandler"

    const-string v1, "CdmaPCDHandler is constructed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method public static getCurrentIDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastNBPCDStatus()Z
    .locals 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    return v0
.end method

.method public static getResolvedMCC()I
    .locals 1

    .prologue
    .line 179
    sget v0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mResolvedMCC:I

    return v0
.end method

.method public static isNBPCDAllowed()Z
    .locals 1

    .prologue
    .line 166
    sget-boolean v0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    return v0
.end method


# virtual methods
.method public handleNBPCDAttmptResult(Z)V
    .locals 5
    .parameter "result"

    .prologue
    .line 147
    const-string v1, "CdmaPCDHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNBPCDAttmptResult:result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isNBPCDAllowed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lastNBPCDStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    if-eqz v1, :cond_2

    .line 149
    if-eqz p1, :cond_0

    sget-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    if-eq v1, p1, :cond_1

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    sget v2, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mResolvedMCC:I

    sget v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    sget-boolean v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/motorola/android/telephony/MCCTables;->updateNBPCDSupportInfo(IIZZ)V

    .line 154
    :cond_1
    sput-boolean p1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    .line 156
    sget-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    sput-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    .line 159
    sget-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    if-eqz v1, :cond_3

    const-string v0, "true"

    .line 160
    .local v0, value:Ljava/lang/String;
    :goto_0
    const-string v1, "cdma.nbpcd.supported"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .end local v0           #value:Ljava/lang/String;
    :cond_2
    return-void

    .line 159
    :cond_3
    const-string v0, "false"

    goto :goto_0
.end method

.method public handleSetUpProcess(IIII)Z
    .locals 8
    .parameter "mcc"
    .parameter "sid"
    .parameter "tz"
    .parameter "DSTFlag"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    const/4 v1, 0x0

    .line 48
    .local v1, resolvedMCC:I
    const-string v5, "CdmaPCDHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mcc "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tz "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dstflag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v5, "CdmaPCDHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCurrentMCC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCurrentSID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCurrentIDD "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget v5, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    if-ne p1, v5, :cond_0

    sget v5, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    if-ne p2, v5, :cond_0

    .line 52
    const-string v4, "CdmaPCDHandler"

    const-string v5, "Return as nothing changed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return v3

    .line 56
    :cond_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v5, :cond_1

    .line 57
    const-string v3, "CdmaPCDHandler"

    const-string v5, "MCC lookup table not initialized"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 58
    goto :goto_0

    .line 61
    :cond_1
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v5, p1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    const-string v5, "CdmaPCDHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found data in VZW tables with MCC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget v5, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    if-eq p1, v5, :cond_3

    .line 66
    iget-object v5, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    sput-object v5, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    .line 67
    const-string v5, "CdmaPCDHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated mCurrentMCC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCurrentSID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCurrentIDD "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_1
    move v1, p1

    .line 104
    :cond_2
    :goto_2
    sput p1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    .line 105
    sput p2, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    .line 107
    sput v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mResolvedMCC:I

    .line 109
    const-string v5, "CdmaPCDHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated: mCurrentMCC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCurrentSID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCurrentIDD "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mResolvedMCC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mResolvedMCC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-lez v1, :cond_a

    .line 114
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v5, v1, p2}, Lcom/motorola/android/telephony/MCCTables;->isMCCSupportNBPCD(II)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 115
    const-string v4, "CdmaPCDHandler"

    const-string v5, "MCC Support NBPCD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sput-boolean v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    .line 117
    sput-boolean v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    .line 136
    :goto_3
    const-string v4, "CdmaPCDHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNBPCDAllowed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastNBPCDStatus "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-boolean v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    if-eqz v4, :cond_b

    const-string v2, "true"

    .line 140
    .local v2, value:Ljava/lang/String;
    :goto_4
    const-string v4, "cdma.nbpcd.supported"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 70
    .end local v2           #value:Ljava/lang/String;
    :cond_3
    const-string v5, "CdmaPCDHandler"

    const-string v6, "IDD NOT Updated as MCC same as before"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 75
    :cond_4
    const-string v5, "CdmaPCDHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MCC NOT found in VZW table. MCC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget v5, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    if-ne v5, p1, :cond_5

    sget v5, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    if-ne v5, p2, :cond_5

    .line 78
    const-string v5, "CdmaPCDHandler"

    const-string v6, "IDD NOT Updated as MCC & SID same as before"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    move v1, p1

    goto/16 :goto_2

    .line 82
    :cond_5
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v5, p2, p3, p4}, Lcom/motorola/android/telephony/MCCTables;->checkUnknownMcc(III)I

    move-result v1

    .line 83
    const-string v5, "CdmaPCDHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkUnknownMcc return MCC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-lez v1, :cond_6

    .line 85
    const-string v5, "CdmaPCDHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resolved the unknown mcc and get the valid MCC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v5, v1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    iget-object v5, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    sput-object v5, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    goto/16 :goto_2

    .line 93
    :cond_6
    const-string v5, "CdmaPCDHandler"

    const-string v6, "Could not resolve unknown MCC"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget v5, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    if-eq v5, p2, :cond_7

    .line 95
    const-string v5, "CdmaPCDHandler"

    const-string v6, "Reset MCC to 011 as SID changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v5, "011"

    sput-object v5, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    goto/16 :goto_2

    .line 98
    :cond_7
    const-string v5, "CdmaPCDHandler"

    const-string v6, "IDD NOT Updated as SID same as before"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 119
    :cond_8
    const-string v5, "CdmaPCDHandler"

    const-string v6, "MCC NOT Support NBPCD"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-boolean v5, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->needNBPCDRetry:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v5, v1, p2}, Lcom/motorola/android/telephony/MCCTables;->isLastNBPCDAttmptExpired(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 122
    const-string v5, "CdmaPCDHandler"

    const-string v6, "Last NBPCD Attempt Expired"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sput-boolean v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    .line 124
    sput-boolean v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    goto/16 :goto_3

    .line 126
    :cond_9
    const-string v5, "CdmaPCDHandler"

    const-string v6, "No need to try or last NBPCD Attempt NOT Expired"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sput-boolean v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    .line 128
    sput-boolean v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    goto/16 :goto_3

    .line 132
    :cond_a
    const-string v5, "CdmaPCDHandler"

    const-string v6, "MMC unresolved"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sput-boolean v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    .line 134
    sput-boolean v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    goto/16 :goto_3

    .line 139
    :cond_b
    const-string v2, "false"

    goto/16 :goto_4
.end method
