.class public final Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;
.super Ljava/lang/Object;
.source "CdmaNumberHandleForAssistedDialing.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final US_CC:Ljava/lang/String;

.field private final US_IDD:Ljava/lang/String;

.field private final US_NDD:Ljava/lang/String;

.field private cr:Landroid/content/ContentResolver;

.field private isoCountryName:Ljava/lang/String;

.field private mCurrentMcc:I

.field private mMccTable:Lcom/motorola/android/telephony/MCCTables;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "CdmaNumberHandleForAssistedDialing"

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->LOG_TAG:Ljava/lang/String;

    .line 31
    const-string v0, "011"

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->US_IDD:Ljava/lang/String;

    .line 32
    const-string v0, "1"

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->US_CC:Ljava/lang/String;

    .line 33
    const-string v0, "1"

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->US_NDD:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mCurrentMcc:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    .line 37
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    .line 40
    new-instance v0, Lcom/motorola/android/telephony/MCCTables;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/MCCTables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    .line 42
    return-void
.end method

.method private checkAndProcessNonLeadingPlusCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"
    .parameter "otaIdd"

    .prologue
    .line 519
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 520
    :cond_0
    const/4 v5, 0x0

    .line 538
    :goto_0
    return-object v5

    .line 523
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 524
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 525
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 527
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 528
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 529
    .local v0, c:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    if-nez v1, :cond_3

    .line 530
    :cond_2
    const/4 v1, 0x1

    .line 531
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 527
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 534
    :cond_3
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 538
    .end local v0           #c:C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private getPostDialFirstIndex(Ljava/lang/String;)I
    .locals 5
    .parameter "phoneNumber"

    .prologue
    const/4 v2, -0x1

    .line 586
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    :cond_0
    move v0, v2

    .line 595
    :cond_1
    :goto_0
    return v0

    .line 589
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 590
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 591
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 595
    goto :goto_0
.end method

.method private hasPlusCode(Ljava/lang/String;)Z
    .locals 6
    .parameter "phoneNumber"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 546
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v2, :cond_2

    :cond_0
    move v2, v3

    .line 557
    :cond_1
    :goto_0
    return v2

    .line 549
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 552
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 553
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_1

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 557
    goto :goto_0
.end method

.method private hasSpecialChar(Ljava/lang/String;)Z
    .locals 6
    .parameter "phoneNumber"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 565
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v3, :cond_2

    :cond_0
    move v3, v4

    .line 579
    :cond_1
    :goto_0
    return v3

    .line 568
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 572
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 573
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 574
    .local v0, c:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_3

    const/16 v5, 0x39

    if-le v0, v5, :cond_4

    :cond_3
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_1

    .line 572
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #c:C
    :cond_5
    move v3, v4

    .line 579
    goto :goto_0
.end method

.method private isValidCountryCode(Ljava/lang/String;)Z
    .locals 1
    .parameter "countryCode"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isValidIDD(Ljava/lang/String;)Z
    .locals 1
    .parameter "idd"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isValidIDD(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isValidNANPAreaCode(Ljava/lang/String;)Z
    .locals 1
    .parameter "areaCode"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isValidNANPAreaCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private manipulateNumInVZWNetwork(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 9
    .parameter "sourceNumber"
    .parameter "byWhom"
    .parameter "isNBPCDAllowed"
    .parameter "lastNBPCDStatus"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 115
    move-object v0, p1

    .line 116
    .local v0, manipulatedNumber:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 117
    .local v1, numLength:I
    if-eqz v1, :cond_4

    .line 120
    if-nez p3, :cond_1

    .line 121
    const-string v2, "011"

    invoke-direct {p0, p1, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->checkAndProcessNonLeadingPlusCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    const-string v2, "011"

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v2, v0

    .line 272
    :goto_0
    return-object v2

    .line 129
    :cond_1
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->hasPlusCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    const/4 v2, 0x0

    goto :goto_0

    .line 135
    :cond_2
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->hasSpecialChar(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    const/4 v2, 0x0

    goto :goto_0

    .line 139
    :cond_3
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 140
    if-nez p3, :cond_4

    .line 142
    const/16 v2, 0xc

    if-ne v1, v2, :cond_6

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v2, p1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 145
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 269
    const/4 v0, 0x0

    :cond_5
    move-object v2, v0

    .line 272
    goto :goto_0

    .line 149
    :cond_6
    const/16 v2, 0xc

    if-lt v1, v2, :cond_4

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 154
    :cond_7
    const-string v2, "011"

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 159
    :cond_8
    const/16 v2, 0xb

    if-ne v1, v2, :cond_9

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 163
    :cond_9
    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    .line 167
    const-string v2, "BY_DIALER"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 168
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "011"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 169
    if-eqz p4, :cond_a

    .line 170
    const-string v2, "+"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 172
    :cond_a
    const-string v2, "011"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 177
    :cond_b
    const-string v2, "BY_CONTACT"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 180
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "011"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 183
    const/16 v2, 0xb

    if-ne v1, v2, :cond_d

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 185
    if-eqz p4, :cond_c

    .line 186
    const-string v2, "+"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 188
    :cond_c
    const-string v2, "011"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 192
    :cond_d
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 196
    :cond_f
    if-eqz p4, :cond_10

    .line 197
    const-string v2, "+"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 199
    :cond_10
    const-string v2, "011"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 203
    :cond_11
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 208
    :cond_12
    if-eqz p4, :cond_13

    .line 209
    const-string v2, "+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 211
    :cond_13
    const-string v2, "011"

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 215
    :cond_14
    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x5

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 220
    :cond_15
    if-eqz p4, :cond_16

    .line 221
    const-string v2, "+"

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 223
    :cond_16
    const-string v2, "011"

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 227
    :cond_17
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x6

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x5

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 232
    :cond_18
    if-eqz p4, :cond_19

    .line 233
    const-string v2, "+"

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 235
    :cond_19
    const-string v2, "011"

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 239
    :cond_1a
    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x7

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x6

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x5

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 244
    :cond_1b
    if-eqz p4, :cond_1c

    .line 245
    const-string v2, "+"

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 247
    :cond_1c
    const-string v2, "011"

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 251
    :cond_1d
    const/4 v2, 0x5

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 256
    :cond_1e
    if-eqz p4, :cond_1f

    .line 257
    const-string v2, "+"

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 259
    :cond_1f
    const-string v2, "011"

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private manipulateNumberinNonVZWNetwork(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 19
    .parameter "sourceNumber"
    .parameter "byWhom"
    .parameter "isNBPCDAllowed"
    .parameter "lastNBPCDStatus"

    .prologue
    .line 281
    move-object/from16 v5, p1

    .line 282
    .local v5, manipulatedNumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 290
    .local v6, numLength:I
    const-string v2, ""

    .line 293
    .local v2, areaCode:Ljava/lang/String;
    sget-object v16, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v16

    .line 294
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    const-string v17, "cur_country_idd"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 295
    .local v9, otaIdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    const-string v17, "cur_country_ndd"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 296
    .local v11, otaNdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    const-string v17, "cur_country_code"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 298
    .local v7, otaCC:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    const-string v17, "ref_country_idd"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 299
    .local v13, refIdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    const-string v17, "cur_country_updated_by_user"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 303
    .local v3, areaCodeUpdated:I
    if-eqz v3, :cond_0

    .line 305
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    const-string v17, "ref_country_area_code"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    :cond_0
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    if-nez v3, :cond_1

    .line 310
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, mMdn:Ljava/lang/String;
    if-nez v4, :cond_7

    const-string v4, ""

    .line 313
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    .line 314
    const/4 v15, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 327
    .end local v4           #mMdn:Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    .line 328
    .local v10, otaIddLength:I
    if-eqz v9, :cond_2

    .line 329
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    .line 331
    :cond_2
    const/4 v12, 0x0

    .line 332
    .local v12, otaNddLength:I
    if-eqz v11, :cond_3

    .line 333
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    .line 335
    :cond_3
    const/4 v8, 0x0

    .line 336
    .local v8, otaCCLength:I
    if-eqz v7, :cond_4

    .line 337
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 339
    :cond_4
    const/4 v14, 0x0

    .line 340
    .local v14, refIddLength:I
    if-eqz v13, :cond_5

    .line 341
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    .line 344
    :cond_5
    if-eqz v6, :cond_b

    .line 347
    if-nez p3, :cond_8

    .line 348
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->checkAndProcessNonLeadingPlusCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 349
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 350
    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const-string v16, "+"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 351
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_6
    move-object v15, v5

    .line 495
    :goto_1
    return-object v15

    .line 307
    .end local v3           #areaCodeUpdated:I
    .end local v7           #otaCC:Ljava/lang/String;
    .end local v8           #otaCCLength:I
    .end local v9           #otaIdd:Ljava/lang/String;
    .end local v10           #otaIddLength:I
    .end local v11           #otaNdd:Ljava/lang/String;
    .end local v12           #otaNddLength:I
    .end local v13           #refIdd:Ljava/lang/String;
    .end local v14           #refIddLength:I
    :catchall_0
    move-exception v15

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 312
    .restart local v3       #areaCodeUpdated:I
    .restart local v4       #mMdn:Ljava/lang/String;
    .restart local v7       #otaCC:Ljava/lang/String;
    .restart local v9       #otaIdd:Ljava/lang/String;
    .restart local v11       #otaNdd:Ljava/lang/String;
    .restart local v13       #refIdd:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v15, v4}, Lcom/motorola/android/telephony/MCCTables;->formatNANPMDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 356
    .end local v4           #mMdn:Ljava/lang/String;
    .restart local v8       #otaCCLength:I
    .restart local v10       #otaIddLength:I
    .restart local v12       #otaNddLength:I
    .restart local v14       #refIddLength:I
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->hasPlusCode(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 357
    const/4 v15, 0x0

    goto :goto_1

    .line 362
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->hasSpecialChar(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 363
    const/4 v15, 0x0

    goto :goto_1

    .line 366
    :cond_a
    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const-string v16, "+"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 367
    if-nez p3, :cond_b

    .line 372
    add-int/lit8 v15, v8, 0x1

    if-lt v6, v15, :cond_d

    const/4 v15, 0x1

    add-int/lit8 v16, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 374
    add-int/lit8 v15, v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 491
    :cond_b
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 492
    const/4 v5, 0x0

    :cond_c
    move-object v15, v5

    .line 495
    goto :goto_1

    .line 379
    :cond_d
    const/4 v15, 0x2

    if-ne v6, v15, :cond_e

    const/4 v15, 0x1

    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_10

    :cond_e
    const/4 v15, 0x3

    if-ne v6, v15, :cond_f

    const/4 v15, 0x1

    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_10

    const/4 v15, 0x1

    const/16 v16, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_10

    :cond_f
    const/4 v15, 0x3

    if-le v6, v15, :cond_b

    const/4 v15, 0x1

    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_10

    const/4 v15, 0x1

    const/16 v16, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_10

    const/4 v15, 0x1

    const/16 v16, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 387
    :cond_10
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 397
    :cond_11
    const-string v15, "BY_CONTACT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    const/16 v15, 0xb

    if-ne v6, v15, :cond_13

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const-string v16, "1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    const-string v15, "1"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    .line 401
    if-eqz p4, :cond_12

    .line 402
    const-string v15, "+"

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 404
    :cond_12
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 412
    :cond_13
    const-string v15, "BY_CONTACT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    add-int/lit8 v15, v12, 0xa

    if-ne v6, v15, :cond_15

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    const-string v15, "1"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_15

    .line 416
    if-eqz p4, :cond_14

    .line 417
    const-string v15, "+"

    const-string v16, "1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 421
    :cond_14
    const-string v15, "1"

    invoke-virtual {v9, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 429
    :cond_15
    const-string v15, "BY_CONTACT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    const/16 v15, 0xa

    if-ne v6, v15, :cond_17

    const-string v15, "1"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_17

    .line 432
    if-eqz p4, :cond_16

    .line 433
    const-string v15, "+"

    const-string v16, "1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 435
    :cond_16
    const-string v15, "1"

    invoke-virtual {v9, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 443
    :cond_17
    const-string v15, "BY_CONTACT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    const/4 v15, 0x7

    if-ne v6, v15, :cond_19

    const-string v15, "1"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    .line 446
    if-eqz p4, :cond_18

    .line 447
    const-string v15, "+"

    const-string v16, "1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 451
    :cond_18
    const-string v15, "1"

    invoke-virtual {v9, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 460
    :cond_19
    add-int v15, v10, v8

    if-lt v6, v15, :cond_1b

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 462
    if-eqz p4, :cond_1a

    const-string v15, "BY_CONTACT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 463
    const-string v15, "+"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 464
    :cond_1a
    add-int v15, v10, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 465
    add-int v15, v10, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 470
    :cond_1b
    if-lt v6, v14, :cond_b

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 474
    if-eqz p4, :cond_1c

    .line 475
    const-string v15, "+"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 478
    :cond_1c
    add-int v15, v14, v8

    if-lt v6, v15, :cond_1d

    add-int v15, v14, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 480
    add-int v15, v14, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 484
    :cond_1d
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2
.end method


# virtual methods
.method public getManipulatedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "sourceNumber"
    .parameter "byWhom"

    .prologue
    const/4 v7, 0x0

    .line 50
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed()Z

    move-result v0

    .line 51
    .local v0, isNBPCDAllowed:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->getLastNBPCDStatus()Z

    move-result v1

    .line 58
    .local v1, lastNBPCDStatus:Z
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->getPostDialFirstIndex(Ljava/lang/String;)I

    move-result v4

    .line 61
    .local v4, postDialFirstIndex:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 62
    move-object v3, p1

    .line 63
    .local v3, manipulatingNumber:Ljava/lang/String;
    const/4 v5, 0x0

    .line 69
    .local v5, postDialNumber:Ljava/lang/String;
    :goto_0
    sget-object v7, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v7

    .line 70
    :try_start_0
    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    const-string v8, "cur_country_mcc"

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mCurrentMcc:I

    .line 71
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget v6, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mCurrentMcc:I

    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    .line 81
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_3

    .line 82
    :cond_0
    const/4 v2, 0x0

    .line 97
    .local v2, manipulatedNumber:Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_6

    .line 98
    const/4 v2, 0x0

    .line 103
    .end local v2           #manipulatedNumber:Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v2

    .line 65
    .end local v3           #manipulatingNumber:Ljava/lang/String;
    .end local v5           #postDialNumber:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 66
    .restart local v3       #manipulatingNumber:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #postDialNumber:Ljava/lang/String;
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 83
    :cond_3
    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v7, "us"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v7, "pr"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v7, "vi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v7, "gu"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 88
    :cond_4
    invoke-direct {p0, v3, p2, v0, v1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->manipulateNumInVZWNetwork(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #manipulatedNumber:Ljava/lang/String;
    goto :goto_1

    .line 92
    .end local v2           #manipulatedNumber:Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v3, p2, v0, v1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->manipulateNumberinNonVZWNetwork(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #manipulatedNumber:Ljava/lang/String;
    goto :goto_1

    .line 100
    :cond_6
    if-eqz v5, :cond_1

    .line 103
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method
