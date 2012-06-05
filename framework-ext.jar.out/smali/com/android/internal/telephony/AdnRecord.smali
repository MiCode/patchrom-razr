.class public Lcom/android/internal/telephony/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field private static final ADN_MAX_NUMBER_BYTES:I = 0xa

.field static final ADN_TON_AND_NPI:I = 0x1

.field private static final ANR_MAX_NUMBER_BYTES:I = 0xa

.field private static final ANR_NUMBER_EXT1_OFFSET:I = 0xe

.field private static final ANR_NUMBER_LENGTH_OFFSET:I = 0x1

.field private static final ANR_NUMBER_OFFSET:I = 0x2

.field private static final ANR_TON_OFFSET:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field adnExtNumber:Ljava/lang/String;

.field alphaTag:Ljava/lang/String;

.field anr:Ljava/lang/String;

.field anrExtNumber:Ljava/lang/String;

.field anrExtRecord:I

.field efid:I

.field emails:[Ljava/lang/String;

.field extRecord:I

.field number:Ljava/lang/String;

.field recordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/android/internal/telephony/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/16 v1, 0xff

    .line 158
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->adnExtNumber:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtNumber:Ljava/lang/String;

    .line 159
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 160
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 161
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 162
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 164
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/16 v1, 0xff

    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->adnExtNumber:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtNumber:Ljava/lang/String;

    .line 136
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 137
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 138
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 139
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 140
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 141
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "number2"

    .prologue
    const/16 v1, 0xff

    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->adnExtNumber:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtNumber:Ljava/lang/String;

    .line 149
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 150
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 151
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 153
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 154
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/16 v1, 0xff

    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->adnExtNumber:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtNumber:Ljava/lang/String;

    .line 122
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 123
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 124
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/AdnRecord;->parseRecord([B)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 132
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "number2"

    .prologue
    const/4 v1, 0x0

    .line 145
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 119
    return-void
.end method

.method private isAscii(Ljava/lang/String;)Z
    .locals 3
    .parameter "string"

    .prologue
    .line 548
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 549
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    const/16 v2, 0x7f

    if-le v1, v2, :cond_0

    .line 550
    const/4 v1, 0x0

    .line 553
    :goto_1
    return v1

    .line 548
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isEmptyStringArray([Ljava/lang/String;)Z
    .locals 3
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 226
    if-nez p0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    array-length v2, p0

    if-eqz v2, :cond_0

    array-length v2, p0

    if-ne v2, v0, :cond_2

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 232
    goto :goto_0
.end method

.method public static parseExt1([B)Ljava/lang/String;
    .locals 6
    .parameter "extRecord"

    .prologue
    const/4 v5, 0x2

    .line 556
    const-string v1, ""

    .line 558
    .local v1, nu:Ljava/lang/String;
    :try_start_0
    array-length v3, p0

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    move-object v2, v1

    .line 578
    .end local v1           #nu:Ljava/lang/String;
    .local v2, nu:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 562
    .end local v2           #nu:Ljava/lang/String;
    .restart local v1       #nu:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3

    if-eq v3, v5, :cond_1

    move-object v2, v1

    .line 565
    .end local v1           #nu:Ljava/lang/String;
    .restart local v2       #nu:Ljava/lang/String;
    goto :goto_0

    .line 568
    .end local v2           #nu:Ljava/lang/String;
    .restart local v1       #nu:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xa

    if-le v3, v4, :cond_2

    move-object v2, v1

    .line 570
    .end local v1           #nu:Ljava/lang/String;
    .restart local v2       #nu:Ljava/lang/String;
    goto :goto_0

    .line 572
    .end local v2           #nu:Ljava/lang/String;
    .restart local v1       #nu:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x2

    const/4 v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {p0, v3, v4}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 578
    .end local v1           #nu:Ljava/lang/String;
    .restart local v2       #nu:Ljava/lang/String;
    goto :goto_0

    .line 575
    .end local v2           #nu:Ljava/lang/String;
    .restart local v1       #nu:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 576
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing error in  ext record"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private parseRecord([B)V
    .locals 6
    .parameter "record"

    .prologue
    const/4 v5, 0x0

    .line 461
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 464
    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .line 466
    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 468
    .local v2, numberLength:I
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 470
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 495
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    .line 481
    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 485
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 487
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :catch_0
    move-exception v0

    .line 490
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 492
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 493
    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringArrayCompareNullEqualsEmpty([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 235
    invoke-static {p0}, Lcom/android/internal/telephony/AdnRecord;->isEmptyStringArray([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/telephony/AdnRecord;->isEmptyStringArray([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 211
    if-ne p0, p1, :cond_0

    .line 212
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    .line 214
    :cond_0
    if-nez p0, :cond_1

    .line 215
    const-string p0, ""

    .line 217
    :cond_1
    if-nez p1, :cond_2

    .line 218
    const-string p1, ""

    .line 220
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 429
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 438
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 12
    .parameter "recordSize"

    .prologue
    const/16 v11, 0x14

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, adnString:[B
    add-int/lit8 v3, p1, -0xe

    .line 351
    .local v3, footerOffset:I
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/AdnRecord;->isEmptyStringArray([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 353
    const-string v6, "GSM"

    const-string v7, "[buildAdnString] Empty number"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-array v0, p1, [B

    .line 355
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_7

    .line 356
    aput-byte v10, v0, v4

    .line 355
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 369
    .end local v4           #i:I
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_2

    .line 370
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] Max length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,trim it"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v6, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 372
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] after trim:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_2
    new-array v0, p1, [B

    .line 376
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    if-ge v4, p1, :cond_3

    .line 377
    aput-byte v10, v0, v4

    .line 376
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 382
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    if-nez v6, :cond_8

    const-string v5, ""

    .line 384
    .local v5, sub:Ljava/lang/String;
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v11, :cond_4

    .line 386
    invoke-virtual {v5, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 389
    :cond_4
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 391
    .local v1, bcdNumber:[B
    if-eqz v1, :cond_5

    .line 392
    add-int/lit8 v6, v3, 0x1

    array-length v7, v1

    invoke-static {v1, v9, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    :cond_5
    if-eqz v1, :cond_6

    .line 397
    add-int/lit8 v6, v3, 0x0

    array-length v7, v1

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 401
    :cond_6
    add-int/lit8 v6, v3, 0xc

    aput-byte v10, v0, v6

    .line 403
    add-int/lit8 v6, v3, 0xd

    iget v7, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 409
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 413
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/android/internal/telephony/GsmAlphabet;->encodeAlphaTag(Ljava/lang/String;I)[B

    move-result-object v2

    .line 414
    .local v2, byteTag:[B
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADN byte"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    array-length v6, v2

    invoke-static {v2, v9, v0, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    .end local v1           #bcdNumber:[B
    .end local v2           #byteTag:[B
    .end local v5           #sub:Ljava/lang/String;
    :cond_7
    return-object v0

    .line 382
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    goto :goto_2
.end method

.method public buildAnrString(Ljava/lang/String;I)[B
    .locals 7
    .parameter "number"
    .parameter "anrRecLen"

    .prologue
    const/16 v5, 0x14

    const/4 v6, 0x0

    .line 286
    new-array v1, p2, [B

    .line 287
    .local v1, data:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 288
    const/4 v4, -0x1

    aput-byte v4, v1, v2

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    :cond_0
    const/16 v3, 0xff

    .line 291
    .local v3, length:I
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_1

    .line 293
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 295
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 298
    .local v0, bcdNumber:[B
    const/4 v4, 0x2

    array-length v5, v0

    invoke-static {v0, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    array-length v3, v0

    .line 302
    .end local v0           #bcdNumber:[B
    :cond_2
    const/4 v4, 0x1

    int-to-byte v5, v3

    aput-byte v5, v1, v4

    .line 303
    const/16 v4, 0xe

    iget v5, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 304
    return-object v1
.end method

.method public buildEmailString(Ljava/lang/String;IZ)[B
    .locals 4
    .parameter "email"
    .parameter "emailRecLen"
    .parameter "isEmailFiletype2"

    .prologue
    .line 310
    new-array v0, p2, [B

    .line 311
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 312
    const/4 v3, -0x1

    aput-byte v3, v0, v1

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :cond_0
    const/16 v2, 0xff

    .line 316
    .local v2, length:I
    if-eqz p3, :cond_2

    .line 318
    add-int/lit8 v2, p2, -0x2

    .line 325
    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 326
    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 329
    :cond_1
    return-object v0

    .line 322
    :cond_2
    move v2, p2

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public getANR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    return-object v0
.end method

.method public getAdnExtNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->adnExtNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAnrExtNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAnrExtRecord()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    return v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getExtRecord()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordNumber()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    return v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 200
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringArrayCompareNullEqualsEmpty([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqualExceptEmail(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setANR(Ljava/lang/String;)V
    .locals 0
    .parameter "anr"

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 506
    return-void
.end method

.method public setAdnExtNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "adn"

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->adnExtNumber:Ljava/lang/String;

    .line 521
    return-void
.end method

.method public setAlphaTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 514
    return-void
.end method

.method public setAnrExtNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "anr"

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtNumber:Ljava/lang/String;

    .line 528
    return-void
.end method

.method public setAnrExtRecord(I)V
    .locals 0
    .parameter "ext"

    .prologue
    .line 534
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:I

    .line 535
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setExtRecord(I)V
    .locals 0
    .parameter "ext"

    .prologue
    .line 544
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 545
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "num"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 517
    return-void
.end method

.method public setRecordNumber(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 180
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 266
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    return-void
.end method
