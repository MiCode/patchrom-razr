.class public Lcom/motorola/android/bmessage/BMessageParser_V10;
.super Lcom/motorola/android/bmessage/BMessageParser;
.source "BMessageParser_V10.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "bmessage.BMessageParser_V10"

.field private static final sAvailableCDMALanguageValue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAvailableEmailHeaderProperty:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAvailableEncodingValue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAvailableGSMLanguageValue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAvailableInputCharsetValue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAvailableStatusValue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAvailableTypeValue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBmsgBodyCommonProperty:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBmsgCommonProperty:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBmsgVcardCommonProperty:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBMsgByteArray:[B

.field private mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

.field private mCurPos:I

.field private mCurrEnvLayer:I

.field private final mField1:I

.field private final mField2:I

.field private final mFieldNumber:I

.field private mHasSetEmail:Z

.field private mHasSetTel:Z

.field private mInputCharset:Ljava/lang/String;

.field private mLineCount:I

.field private mMaxEnvLayer:I

.field private mMsgBodyLen:I

.field private mTotalBytes:I

.field private mVcardVersion:Ljava/lang/String;

.field private final sBmsgVersion10:Ljava/lang/String;

.field private final sDefaultCharset:Ljava/lang/String;

.field private final sDefaultEncoding:Ljava/lang/String;

.field private final sDefaultLanguage:Ljava/lang/String;

.field private final sDefaultReadStatus:Ljava/lang/String;

.field private final sDefaultVcardVersion:Ljava/lang/String;

.field private final sMsgDataMinLen:I

.field private final sPartIdMaxLimit:I

.field private final sPartIdMinLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "VERSION"

    aput-object v2, v1, v4

    const-string v2, "TYPE"

    aput-object v2, v1, v5

    const-string v2, "STATUS"

    aput-object v2, v1, v6

    const-string v2, "FOLDER"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sBmsgCommonProperty:Ljava/util/HashSet;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "N"

    aput-object v2, v1, v4

    const-string v2, "FN"

    aput-object v2, v1, v5

    const-string v2, "TEL"

    aput-object v2, v1, v6

    const-string v2, "EMAIL"

    aput-object v2, v1, v7

    const-string v2, "VERSION"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sBmsgVcardCommonProperty:Ljava/util/HashSet;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "PARTID"

    aput-object v2, v1, v4

    const-string v2, "LENGTH"

    aput-object v2, v1, v5

    const-string v2, "CHARSET"

    aput-object v2, v1, v6

    const-string v2, "ENCODING"

    aput-object v2, v1, v7

    const-string v2, "LANGUAGE"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sBmsgBodyCommonProperty:Ljava/util/HashSet;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "SMS_GSM"

    aput-object v2, v1, v4

    const-string v2, "SMS_CDMA"

    aput-object v2, v1, v5

    const-string v2, "MMS"

    aput-object v2, v1, v6

    const-string v2, "EMAIL"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableTypeValue:Ljava/util/HashSet;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "READ"

    aput-object v2, v1, v4

    const-string v2, "UNREAD"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableStatusValue:Ljava/util/HashSet;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "UTF-8"

    aput-object v2, v1, v4

    const-string v2, "NATIVE"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableInputCharsetValue:Ljava/util/HashSet;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "8BIT"

    aput-object v2, v1, v4

    const-string v2, "G-7BIT"

    aput-object v2, v1, v5

    const-string v2, "G-7BITEXT"

    aput-object v2, v1, v6

    const-string v2, "G-UCS2"

    aput-object v2, v1, v7

    const-string v2, "G-8BIT"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "C-8BIT"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "C-EPM"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "C-7ASCII"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "C-IA5"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "C-UNICODE"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "C-SJIS"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "C-KOREAN"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "C-LATINHEB"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "C-LATIN"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableEncodingValue:Ljava/util/HashSet;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "TURKISH"

    aput-object v2, v1, v4

    const-string v2, "SPANISH"

    aput-object v2, v1, v5

    const-string v2, "PORTUGUESE"

    aput-object v2, v1, v6

    const-string v2, "UNKNOWN"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableGSMLanguageValue:Ljava/util/HashSet;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ENGLISH"

    aput-object v2, v1, v4

    const-string v2, "FRENCH"

    aput-object v2, v1, v5

    const-string v2, "SPANISH"

    aput-object v2, v1, v6

    const-string v2, "JAPANESE"

    aput-object v2, v1, v7

    const-string v2, "KOREAN"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "CHINESE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "HEBREW"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "UNKNOWN"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableCDMALanguageValue:Ljava/util/HashSet;

    .line 115
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Date"

    aput-object v2, v1, v4

    const-string v2, "From"

    aput-object v2, v1, v5

    const-string v2, "Sender"

    aput-object v2, v1, v6

    const-string v2, "To"

    aput-object v2, v1, v7

    const-string v2, "Cc"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "Bcc"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Reply-To"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Subject"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableEmailHeaderProperty:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser;-><init>()V

    .line 130
    const-string v0, "8BIT"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sDefaultEncoding:Ljava/lang/String;

    .line 131
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sDefaultCharset:Ljava/lang/String;

    .line 132
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sDefaultLanguage:Ljava/lang/String;

    .line 133
    const-string v0, "READ"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sDefaultReadStatus:Ljava/lang/String;

    .line 134
    const-string v0, "2.1"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sDefaultVcardVersion:Ljava/lang/String;

    .line 136
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sBmsgVersion10:Ljava/lang/String;

    .line 137
    iput v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sPartIdMinLimit:I

    .line 138
    const v0, 0xffff

    iput v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sPartIdMaxLimit:I

    .line 139
    const-string v0, "BEGIN:MSG\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "END:MSG\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sMsgDataMinLen:I

    .line 142
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mFieldNumber:I

    .line 143
    iput v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mField1:I

    .line 144
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mField2:I

    .line 147
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    .line 148
    const-string v0, "2.1"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mVcardVersion:Ljava/lang/String;

    .line 149
    iput v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mMsgBodyLen:I

    .line 150
    iput v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mLineCount:I

    .line 151
    iput v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    .line 152
    iput v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mMaxEnvLayer:I

    .line 153
    iput-boolean v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetTel:Z

    .line 154
    iput-boolean v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetEmail:Z

    .line 156
    iput-object v3, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    .line 161
    iput-object v3, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    .line 164
    iput v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    .line 167
    iput v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mTotalBytes:I

    .line 174
    return-void
.end method

.method private getLine()Ljava/lang/String;
    .locals 9

    .prologue
    .line 351
    const/4 v2, 0x0

    .line 362
    .local v2, str:Ljava/lang/String;
    :try_start_0
    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mTotalBytes:I

    if-ge v1, v4, :cond_0

    .line 363
    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mTotalBytes:I

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_2

    .line 364
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    iget v5, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    sub-int v6, v1, v6

    add-int/lit8 v6, v6, 0x1

    const-string v7, "UTF-8"

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v2           #str:Ljava/lang/String;
    .local v3, str:Ljava/lang/String;
    :try_start_1
    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mTotalBytes:I

    iput v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 385
    .end local v3           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 386
    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mLineCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mLineCount:I

    .line 387
    const-string v4, "bmessage.BMessageParser_V10"

    const-string v5, "This is the %dth line: \'%s\' ."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mLineCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v4, v2

    .line 390
    .end local v1           #i:I
    :goto_2
    return-object v4

    .line 370
    .restart local v1       #i:I
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    aget-byte v4, v4, v1

    const/16 v5, 0xd

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 371
    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    if-eq v1, v4, :cond_3

    .line 372
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    iget v5, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    sub-int v6, v1, v6

    const-string v7, "UTF-8"

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v2           #str:Ljava/lang/String;
    .restart local v3       #str:Ljava/lang/String;
    move-object v2, v3

    .line 376
    .end local v3           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    :goto_3
    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 380
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 381
    .local v0, e:Ljava/lang/Exception;
    :goto_4
    const-string v4, "bmessage.BMessageParser_V10"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read line failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v4, 0x0

    goto :goto_2

    .line 374
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    :cond_3
    :try_start_3
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .end local v2           #str:Ljava/lang/String;
    .restart local v3       #str:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    goto :goto_3

    .line 362
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 380
    .end local v2           #str:Ljava/lang/String;
    .restart local v3       #str:Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    goto :goto_4
.end method

.method private getPduBytes()[B
    .locals 14

    .prologue
    .line 422
    const/4 v8, 0x0

    .line 425
    .local v8, pdu:[B
    const/4 v9, 0x7

    :try_start_0
    new-array v5, v9, [B

    fill-array-data v5, :array_0

    .line 426
    .local v5, matchedBytesLowerCase:[B
    const/4 v9, 0x7

    new-array v6, v9, [B

    fill-array-data v6, :array_1

    .line 427
    .local v6, matchedBytesUpperCase:[B
    array-length v7, v6

    .line 428
    .local v7, matchedLen:I
    iget v3, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    .line 429
    .local v3, i:I
    const/4 v4, 0x0

    .line 431
    .local v4, j:I
    :goto_0
    iget v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mTotalBytes:I

    if-ge v3, v9, :cond_2

    if-ge v4, v7, :cond_2

    .line 432
    iget-object v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    aget-byte v9, v9, v3

    aget-byte v10, v6, v4

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    aget-byte v9, v9, v3

    aget-byte v10, v5, v4

    if-ne v9, v10, :cond_1

    .line 434
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 435
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 437
    :cond_1
    sub-int v9, v3, v4

    add-int/lit8 v3, v9, 0x1

    .line 438
    const/4 v4, 0x0

    goto :goto_0

    .line 443
    :cond_2
    if-lt v4, v7, :cond_6

    .line 444
    sub-int v0, v3, v7

    .line 445
    .local v0, checkPoint:I
    const/4 v2, 0x0

    .line 447
    .local v2, found:Z
    add-int/lit8 v3, v0, -0x1

    .line 449
    :goto_1
    iget v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    add-int/lit8 v9, v9, 0x1

    if-le v3, v9, :cond_3

    .line 450
    iget-object v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    aget-byte v9, v9, v3

    const/16 v10, 0x20

    if-ne v9, v10, :cond_3

    .line 451
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 457
    :cond_3
    iget v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    add-int/lit8 v9, v9, 0x1

    if-lt v3, v9, :cond_4

    iget-object v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    aget-byte v9, v9, v3

    const/16 v10, 0xa

    if-ne v9, v10, :cond_4

    iget-object v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    add-int/lit8 v10, v3, -0x1

    aget-byte v9, v9, v10

    const/16 v10, 0xd

    if-ne v9, v10, :cond_4

    .line 460
    const/4 v2, 0x1

    .line 461
    iget v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    add-int/lit8 v9, v9, 0x1

    if-le v3, v9, :cond_4

    .line 462
    add-int/lit8 v9, v3, -0x1

    iget v10, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    sub-int/2addr v9, v10

    new-array v8, v9, [B

    .line 463
    if-eqz v8, :cond_4

    .line 464
    const/4 v4, 0x0

    :goto_2
    array-length v9, v8

    if-ge v4, v9, :cond_4

    .line 465
    iget-object v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    iget v10, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    add-int/2addr v10, v4

    aget-byte v9, v9, v10

    aput-byte v9, v8, v4

    .line 464
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 473
    :cond_4
    if-nez v2, :cond_5

    .line 474
    iget v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    if-le v0, v9, :cond_5

    .line 475
    iget v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    sub-int v9, v0, v9

    new-array v8, v9, [B

    .line 476
    if-eqz v8, :cond_5

    .line 477
    const/4 v4, 0x0

    :goto_3
    array-length v9, v8

    if-ge v4, v9, :cond_5

    .line 478
    iget-object v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    iget v10, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    add-int/2addr v10, v4

    aget-byte v9, v9, v10

    aput-byte v9, v8, v4

    .line 477
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 483
    :cond_5
    iput v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .end local v0           #checkPoint:I
    .end local v2           #found:Z
    :cond_6
    if-eqz v8, :cond_7

    .line 491
    iget v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mLineCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mLineCount:I

    .line 492
    const-string v9, "bmessage.BMessageParser_V10"

    const-string v10, "This is the %dth line with pdu bytes"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mLineCount:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object v9, v8

    .line 497
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #matchedBytesLowerCase:[B
    .end local v6           #matchedBytesUpperCase:[B
    .end local v7           #matchedLen:I
    :goto_5
    return-object v9

    .line 485
    :catch_0
    move-exception v1

    .line 486
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "bmessage.BMessageParser_V10"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Read pdu bytes failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v9, 0x0

    goto :goto_5

    .line 494
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #i:I
    .restart local v4       #j:I
    .restart local v5       #matchedBytesLowerCase:[B
    .restart local v6       #matchedBytesUpperCase:[B
    .restart local v7       #matchedLen:I
    :cond_7
    const-string v9, "bmessage.BMessageParser_V10"

    const-string v10, "Can\'t find pdu bytes"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 425
    :array_0
    .array-data 0x1
        0x45t
        0x4et
        0x44t
        0x3at
        0x4dt
        0x53t
        0x47t
    .end array-data

    .line 426
    :array_1
    .array-data 0x1
        0x65t
        0x6et
        0x64t
        0x3at
        0x6dt
        0x73t
        0x67t
    .end array-data
.end method

.method private getPropertyNameAndValue()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, line:Ljava/lang/String;
    const/4 v1, 0x0

    .line 511
    .local v1, propertyNameAndValue:[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_2

    .line 514
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 515
    invoke-direct {p0, v0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->separateLine(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 516
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, ""

    if-ne v2, v3, :cond_1

    .line 517
    const-string v2, "bmessage.BMessageParser_V10"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid line \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 524
    :goto_1
    return-object v2

    .line 523
    :cond_2
    const-string v2, "bmessage.BMessageParser_V10"

    const-string v3, "Reach the end of file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private handleAddressListString(ILjava/lang/String;)I
    .locals 11
    .parameter "propertyIndex"
    .parameter "addresses"

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1596
    const/4 v1, 0x0

    .line 1597
    .local v1, rslt:I
    const/4 v0, -0x1

    .line 1598
    .local v0, indexMatch:I
    const/4 v2, 0x0

    .line 1600
    .local v2, tmpAddr:Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1601
    :goto_0
    if-eq v0, v9, :cond_2

    .line 1602
    if-eqz v0, :cond_0

    .line 1603
    invoke-virtual {p2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1604
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1605
    invoke-direct {p0, p1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1606
    const-string v3, "bmessage.BMessageParser_V10"

    const-string v4, "handleAddressListString() put address <%s> return <%d>."

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_1

    .line 1610
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 1614
    :goto_1
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1612
    :cond_1
    const-string p2, ""

    goto :goto_1

    .line 1617
    :cond_2
    if-ne v0, v9, :cond_3

    .line 1618
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1619
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1620
    const-string v3, "bmessage.BMessageParser_V10"

    const-string v4, "handleAddressListString() put address <%s> return <%d>."

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :cond_3
    if-eqz v1, :cond_4

    .line 1629
    const/16 v1, 0xe

    .line 1632
    :cond_4
    const-string v3, "bmessage.BMessageParser_V10"

    const-string v4, "handleAddressListString() return the value of : %d ."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    return v1
.end method

.method private handleBmsgBodyCommonProperty(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "propertyName"
    .parameter "propertyValue"

    .prologue
    .line 1009
    const/4 v0, 0x0

    .line 1011
    .local v0, rslt:I
    sget-object v1, Lcom/motorola/android/bmessage/BMessageParser_V10;->sBmsgBodyCommonProperty:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1013
    const-string v1, "PARTID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1014
    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleMsgBodyPartId(Ljava/lang/String;)I

    move-result v0

    .line 1035
    :cond_0
    :goto_0
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v2, "handleBmsgBodyCommonProperty() return the value of : %d ."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    return v0

    .line 1016
    :cond_1
    const-string v1, "LENGTH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1017
    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleMsgBodyLength(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1019
    :cond_2
    const-string v1, "LANGUAGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1020
    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleMsgBodyLanguage(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1022
    :cond_3
    const-string v1, "ENCODING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1023
    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleMsgBodyEncoding(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1025
    :cond_4
    const-string v1, "CHARSET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleMsgBodyCharset(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1032
    :cond_5
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown property name <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> in handleBmsgBodyCommonProperty()."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleBmsgCommonProperty(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "propertyName"
    .parameter "propertyValue"

    .prologue
    .line 927
    const/4 v0, 0x0

    .line 929
    .local v0, rslt:I
    sget-object v1, Lcom/motorola/android/bmessage/BMessageParser_V10;->sBmsgCommonProperty:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 930
    const-string v1, "VERSION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 931
    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleBmsgVersion(Ljava/lang/String;)I

    move-result v0

    .line 958
    :cond_0
    :goto_0
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v2, "handleBmsgCommonProperty() return the value of : %d ."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return v0

    .line 933
    :cond_1
    const-string v1, "TYPE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 934
    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleMsgType(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 936
    :cond_2
    const-string v1, "STATUS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 937
    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleMsgStatus(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 939
    :cond_3
    const-string v1, "FOLDER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleMsgFolder(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 955
    :cond_4
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown property name <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> in handleBmsgCommonProperty()."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleBmsgVcardCommonProperty(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "propertyName"
    .parameter "propertyValue"

    .prologue
    .line 963
    const/4 v0, 0x0

    .line 965
    .local v0, rslt:I
    sget-object v1, Lcom/motorola/android/bmessage/BMessageParser_V10;->sBmsgVcardCommonProperty:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 966
    const-string v1, "N"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 968
    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleVcardName(Ljava/lang/String;)I

    move-result v0

    .line 1004
    :cond_0
    :goto_0
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v2, "handleBmsgVcardCommonProperty() return the value of : %d ."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return v0

    .line 970
    :cond_1
    const-string v1, "FN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 972
    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleVcardFullName(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 978
    :cond_2
    iget-boolean v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetTel:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetEmail:Z

    if-nez v1, :cond_3

    const-string v1, "TEL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 979
    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleVcardTelNumber(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 985
    :cond_3
    iget-boolean v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetEmail:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetTel:Z

    if-nez v1, :cond_4

    const-string v1, "EMAIL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 986
    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleVcardEmailAddress(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 993
    :cond_4
    const-string v1, "VERSION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 994
    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleVcardVersion(Ljava/lang/String;)I

    goto :goto_0

    .line 1001
    :cond_5
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown property name <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> in handleBmsgVcardCommonProperty()."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleBmsgVersion(Ljava/lang/String;)I
    .locals 4
    .parameter "version"

    .prologue
    .line 1111
    const/4 v0, 0x0

    .line 1113
    .local v0, rslt:I
    invoke-virtual {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1114
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported bMessage version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const/4 v0, 0x2

    .line 1118
    :cond_0
    return v0
.end method

.method private handleInputCharset(Ljava/lang/String;)I
    .locals 4
    .parameter "charset"

    .prologue
    .line 1090
    const/4 v0, 0x0

    .line 1092
    .local v0, rslt:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1093
    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    .line 1094
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input Charset is empty, and mInputCharset is set to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :goto_0
    return v0

    .line 1095
    :cond_0
    sget-object v1, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableInputCharsetValue:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1096
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    .line 1097
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input Charset is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , and mInputCharset is set to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1100
    :cond_1
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Input Charset : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , return error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleMsgBodyCharset(Ljava/lang/String;)I
    .locals 4
    .parameter "charset"

    .prologue
    .line 1298
    const/4 v0, 0x0

    .line 1300
    .local v0, rslt:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1303
    :cond_0
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    .line 1304
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The MsgBody charset <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is valid against the InputCharset, is set to Builder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :goto_0
    return v0

    .line 1308
    :cond_1
    const/4 v0, 0x4

    .line 1309
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The MsgBody Charset <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is not compatible with the InputCharset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleMsgBodyEncoding(Ljava/lang/String;)I
    .locals 4
    .parameter "encoding"

    .prologue
    .line 1325
    const/4 v0, 0x0

    .line 1327
    .local v0, rslt:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableEncodingValue:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1328
    :cond_0
    const/16 v1, 0xe

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    .line 1329
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The MsgBody encoding <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is set to Builder."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :goto_0
    return v0

    .line 1331
    :cond_1
    const/4 v0, 0x5

    .line 1332
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The encoding is invalid or unsupported : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleMsgBodyHeaderProperty(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "headerName"
    .parameter "headerValue"

    .prologue
    .line 1561
    const/4 v0, 0x0

    .line 1563
    .local v0, rslt:I
    const-string v1, "Date"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1566
    const/16 v1, 0x13

    invoke-direct {p0, v1, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    .line 1585
    :goto_0
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v2, "handleMsgBodyHeaderProperty() return the value of : %d ."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    return v0

    .line 1567
    :cond_0
    const-string v1, "From"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1568
    const/16 v1, 0x14

    invoke-direct {p0, v1, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleAddressListString(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1569
    :cond_1
    const-string v1, "Sender"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1570
    const/16 v1, 0x15

    invoke-direct {p0, v1, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1571
    :cond_2
    const-string v1, "To"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1572
    const/16 v1, 0x16

    invoke-direct {p0, v1, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleAddressListString(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1573
    :cond_3
    const-string v1, "Cc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1574
    const/16 v1, 0x17

    invoke-direct {p0, v1, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleAddressListString(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1575
    :cond_4
    const-string v1, "Bcc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1576
    const/16 v1, 0x18

    invoke-direct {p0, v1, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleAddressListString(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1577
    :cond_5
    const-string v1, "Reply-To"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1578
    const/16 v1, 0x19

    invoke-direct {p0, v1, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleAddressListString(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1579
    :cond_6
    const-string v1, "Subject"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1580
    const/16 v1, 0x1a

    invoke-direct {p0, v1, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1582
    :cond_7
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v2, "Should not come here, treat as unsupported email headers, ignored."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleMsgBodyLanguage(Ljava/lang/String;)I
    .locals 4
    .parameter "language"

    .prologue
    .line 1344
    const/4 v0, 0x0

    .line 1346
    .local v0, rslt:I
    sget-object v1, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableGSMLanguageValue:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableCDMALanguageValue:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1348
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported MsgBody language : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const-string p1, "UNKNOWN"

    .line 1351
    :cond_0
    const/16 v1, 0xf

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    .line 1353
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The MsgBody language is set to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    return v0
.end method

.method private handleMsgBodyLength(Ljava/lang/String;)I
    .locals 5
    .parameter "len"

    .prologue
    .line 1384
    const/4 v0, 0x0

    .line 1385
    .local v0, rslt:I
    const/4 v1, -0x1

    .line 1387
    .local v1, tmpLen:I
    invoke-static {p1}, Lcom/motorola/android/bmessage/BMessageUtils;->isValidDigits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1388
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1391
    :cond_0
    iget v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sMsgDataMinLen:I

    if-lt v1, v2, :cond_1

    .line 1392
    iput v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mMsgBodyLen:I

    .line 1393
    const-string v2, "bmessage.BMessageParser_V10"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The valid length of message body data is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :goto_0
    return v0

    .line 1395
    :cond_1
    const/4 v0, 0x6

    .line 1396
    const-string v2, "bmessage.BMessageParser_V10"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid message body length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleMsgBodyPartId(Ljava/lang/String;)I
    .locals 4
    .parameter "id"

    .prologue
    .line 1364
    const/4 v0, 0x0

    .line 1366
    .local v0, rslt:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1367
    :cond_0
    const/16 v1, 0xc

    const-string v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    .line 1372
    :goto_0
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The MsgBody partId is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , only \"0\" will be set to Builder."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    return v0

    .line 1369
    :cond_1
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private handleMsgFolder(Ljava/lang/String;)I
    .locals 4
    .parameter "folder"

    .prologue
    .line 1191
    const/4 v0, 0x0

    .line 1203
    .local v0, rslt:I
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    .line 1205
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Has passed to the Builder the Folder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    return v0
.end method

.method private handleMsgStatus(Ljava/lang/String;)I
    .locals 4
    .parameter "status"

    .prologue
    .line 1171
    const/4 v0, 0x0

    .line 1173
    .local v0, rslt:I
    sget-object v1, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableStatusValue:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1174
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message Status got from bMsg is not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , set it to default \'READ\'. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const-string p1, "READ"

    .line 1179
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    .line 1181
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Has passed to the Builder the Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    return v0
.end method

.method private handleMsgType(Ljava/lang/String;)I
    .locals 4
    .parameter "type"

    .prologue
    .line 1152
    const/4 v0, 0x0

    .line 1154
    .local v0, rslt:I
    sget-object v1, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableTypeValue:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1155
    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    .line 1156
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got message type is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , has passed it to the Builder."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :goto_0
    return v0

    .line 1158
    :cond_0
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported message type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private handlePropertyValue(ILjava/lang/String;)I
    .locals 8
    .parameter "propertyNameIndex"
    .parameter "propertyValue"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1043
    const/4 v0, 0x0

    .line 1045
    .local v0, rslt:I
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    if-eqz v1, :cond_1

    .line 1046
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1}, Lcom/motorola/android/bmessage/BMessageBuilder;->startProperty()V

    .line 1047
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1, p1}, Lcom/motorola/android/bmessage/BMessageBuilder;->propertyName(I)V

    .line 1048
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1, p2}, Lcom/motorola/android/bmessage/BMessageBuilder;->propertyValue(Ljava/lang/String;)V

    .line 1049
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1}, Lcom/motorola/android/bmessage/BMessageBuilder;->endProperty()I

    move-result v0

    .line 1050
    if-eqz v0, :cond_0

    .line 1051
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v2, "Builder.endProperty(%d, %s) return error code : %d . "

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :goto_0
    return v0

    .line 1053
    :cond_0
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v2, "Builder.endProperty(%d, %s) succeeded. "

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1057
    :cond_1
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v2, "Invalid mBuilder in handlePropertyValue()."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/16 v0, 0xe

    goto :goto_0
.end method

.method private handlePropertyValue(I[[B)I
    .locals 8
    .parameter "propertyNameIndex"
    .parameter "propertyValue"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1065
    const/4 v0, 0x0

    .line 1067
    .local v0, rslt:I
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    if-eqz v1, :cond_1

    .line 1068
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1}, Lcom/motorola/android/bmessage/BMessageBuilder;->startProperty()V

    .line 1069
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1, p1}, Lcom/motorola/android/bmessage/BMessageBuilder;->propertyName(I)V

    .line 1070
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1, p2}, Lcom/motorola/android/bmessage/BMessageBuilder;->propertyValue([[B)V

    .line 1071
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1}, Lcom/motorola/android/bmessage/BMessageBuilder;->endProperty()I

    move-result v0

    .line 1072
    if-eqz v0, :cond_0

    .line 1073
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v2, "Builder.endProperty(%d, %s) return error code : %d . "

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "bytes value"

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :goto_0
    return v0

    .line 1075
    :cond_0
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v2, "Builder.endProperty(%d, %s) succeeded. "

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "bytes value"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1079
    :cond_1
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v2, "Invalid mBuilder in handlePropertyValue()."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const/16 v0, 0xe

    goto :goto_0
.end method

.method private handleVcardEmailAddress(Ljava/lang/String;)I
    .locals 4
    .parameter "email"

    .prologue
    const/4 v2, 0x1

    .line 1265
    const/4 v0, 0x0

    .line 1267
    .local v0, rslt:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/motorola/android/bmessage/BMessageUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1268
    :cond_0
    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-nez v1, :cond_1

    .line 1269
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Msg Sender\'s email : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :goto_0
    return v0

    .line 1270
    :cond_1
    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-ne v1, v2, :cond_2

    .line 1271
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Msg Receiver\'s email : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1273
    :cond_2
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Higher layers of MsgEnv has invalid vCard email : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1276
    :cond_3
    iput-boolean v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetEmail:Z

    .line 1277
    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-nez v1, :cond_4

    .line 1278
    const/16 v1, 0xa

    invoke-direct {p0, v1, p1}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    .line 1279
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Sender\'s email is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1280
    :cond_4
    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-ne v1, v2, :cond_5

    .line 1281
    const/16 v1, 0xb

    invoke-direct {p0, v1, p1}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    .line 1282
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Receiver\'s email is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1284
    :cond_5
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v2, "The email is for vCard in EnvLayer > 1, it\'s not valid case."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleVcardFullName(Ljava/lang/String;)I
    .locals 4
    .parameter "name"

    .prologue
    .line 1221
    const/4 v0, 0x0

    .line 1223
    .local v0, rslt:I
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got the vCard Full Name is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    return v0
.end method

.method private handleVcardName(Ljava/lang/String;)I
    .locals 4
    .parameter "name"

    .prologue
    .line 1214
    const/4 v0, 0x0

    .line 1216
    .local v0, rslt:I
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got the vCard Name is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    return v0
.end method

.method private handleVcardTelNumber(Ljava/lang/String;)I
    .locals 4
    .parameter "tel"

    .prologue
    const/4 v2, 0x1

    .line 1233
    const/4 v0, 0x0

    .line 1235
    .local v0, rslt:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/motorola/android/bmessage/BMessageUtils;->isValidTelNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1236
    :cond_0
    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-nez v1, :cond_1

    .line 1237
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Msg Sender\'s Tel Number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :goto_0
    return v0

    .line 1238
    :cond_1
    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-ne v1, v2, :cond_2

    .line 1239
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Msg Receiver\'s Tel Number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1241
    :cond_2
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Higher layers of MsgEnv has invalid vCard Tel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1244
    :cond_3
    iput-boolean v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetTel:Z

    .line 1245
    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-nez v1, :cond_4

    .line 1246
    const/16 v1, 0x8

    invoke-direct {p0, v1, p1}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    .line 1247
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Sender\'s tel is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1248
    :cond_4
    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-ne v1, v2, :cond_5

    .line 1249
    const/16 v1, 0x9

    invoke-direct {p0, v1, p1}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    .line 1250
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Receiver\'s tel is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1252
    :cond_5
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v2, "The Tel is for vCard in EnvLayer > 1, it\'s not valid case."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleVcardVersion(Ljava/lang/String;)I
    .locals 4
    .parameter "version"

    .prologue
    .line 1127
    const/4 v0, 0x0

    .line 1129
    .local v0, rslt:I
    const-string v1, "3.0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1130
    const-string v1, "3.0"

    iput-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mVcardVersion:Ljava/lang/String;

    .line 1141
    :goto_0
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVcardVersion is set to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mVcardVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    return v0

    .line 1131
    :cond_0
    const-string v1, "2.1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1132
    const-string v1, "2.1"

    iput-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mVcardVersion:Ljava/lang/String;

    goto :goto_0

    .line 1133
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1134
    const-string v1, "2.1"

    iput-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mVcardVersion:Ljava/lang/String;

    goto :goto_0

    .line 1136
    :cond_2
    const-string v1, "2.1"

    iput-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mVcardVersion:Ljava/lang/String;

    .line 1137
    const/4 v0, 0x2

    .line 1138
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported vCard version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseBmsgBody()I
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 791
    const/4 v1, 0x0

    .line 792
    .local v1, propertyName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 793
    .local v3, propertyValue:Ljava/lang/String;
    const/4 v2, 0x0

    .line 794
    .local v2, propertyNameAndValue:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 795
    .local v4, rslt:I
    const/4 v0, 0x0

    .line 797
    .local v0, isMsgDataGot:Z
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 798
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getPropertyNameAndValue()[Ljava/lang/String;

    move-result-object v2

    .line 799
    if-nez v2, :cond_2

    .line 800
    const-string v5, "bmessage.BMessageParser_V10"

    const-string v6, "Incompleted bMessage file, unexpected reaching the end of file!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/16 v4, 0x8

    .line 863
    :cond_1
    :goto_1
    const-string v5, "bmessage.BMessageParser_V10"

    const-string v6, "parseBmsgBody() return the value of : %d ."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    return v4

    .line 804
    :cond_2
    aget-object v1, v2, v9

    .line 805
    aget-object v3, v2, v8

    .line 806
    const-string v5, "bmessage.BMessageParser_V10"

    const-string v6, "Get propertyName = <%s>, propertyValue = <%s>."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v9

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v3, :cond_4

    .line 808
    :cond_3
    const-string v5, "bmessage.BMessageParser_V10"

    const-string v6, "Get property NameAndValue failed."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/16 v4, 0x8

    .line 810
    goto :goto_1

    .line 813
    :cond_4
    const-string v5, "END"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "BBODY"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 833
    :cond_5
    iget v5, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mMaxEnvLayer:I

    if-ne v5, v6, :cond_0

    .line 834
    if-nez v0, :cond_6

    const-string v5, "BEGIN"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "MSG"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 836
    const/4 v0, 0x1

    .line 847
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->parseMsgBodyData()I

    move-result v4

    .line 857
    :goto_2
    if-eqz v4, :cond_0

    .line 858
    const-string v5, "bmessage.BMessageParser_V10"

    const-string v6, "Process BBODY property return error."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 854
    :cond_6
    invoke-direct {p0, v1, v3}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleBmsgBodyCommonProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_2
.end method

.method private parseBmsgEnvelope()I
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 704
    const/4 v2, 0x0

    .line 705
    .local v2, propertyName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 706
    .local v4, propertyValue:Ljava/lang/String;
    const/4 v3, 0x0

    .line 707
    .local v3, propertyNameAndValue:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 708
    .local v5, rslt:I
    const/4 v0, 0x0

    .line 709
    .local v0, isBbodyProcessed:Z
    const/4 v1, 0x0

    .line 711
    .local v1, isBenvNest:Z
    iget v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    .line 712
    iget v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mMaxEnvLayer:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mMaxEnvLayer:I

    .line 714
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    .line 715
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getPropertyNameAndValue()[Ljava/lang/String;

    move-result-object v3

    .line 716
    if-nez v3, :cond_2

    .line 717
    const-string v6, "bmessage.BMessageParser_V10"

    const-string v7, "Incompleted bMessage file, unexpected reaching the end of file!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/16 v5, 0x8

    .line 781
    :cond_1
    :goto_1
    const-string v6, "bmessage.BMessageParser_V10"

    const-string v7, "parseBmsgEnvelope() return the value of : %d ."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    return v5

    .line 721
    :cond_2
    aget-object v2, v3, v10

    .line 722
    aget-object v4, v3, v9

    .line 723
    const-string v6, "bmessage.BMessageParser_V10"

    const-string v7, "Get propertyName = <%s>, propertyValue = <%s>."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v10

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v4, :cond_4

    .line 725
    :cond_3
    const-string v6, "bmessage.BMessageParser_V10"

    const-string v7, "Get property NameAndValue failed."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/16 v5, 0x8

    .line 727
    goto :goto_1

    .line 730
    :cond_4
    const-string v6, "END"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "BENV"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 732
    iget v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    goto :goto_1

    .line 755
    :cond_5
    const-string v6, "BEGIN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 759
    const-string v6, "VCARD"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 760
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->parseBmsgVcard()I

    move-result v5

    .line 776
    :cond_6
    :goto_2
    if-eqz v5, :cond_0

    .line 777
    const-string v6, "bmessage.BMessageParser_V10"

    const-string v7, "Process BENV property return error."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 766
    :cond_7
    if-nez v0, :cond_8

    const-string v6, "BBODY"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 767
    const/4 v0, 0x1

    .line 768
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->parseBmsgBody()I

    move-result v5

    goto :goto_2

    .line 770
    :cond_8
    if-nez v1, :cond_6

    const-string v6, "BENV"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 771
    const/4 v1, 0x1

    .line 772
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->parseBmsgEnvelope()I

    move-result v5

    goto :goto_2
.end method

.method private parseBmsgProperty()I
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 555
    const/4 v2, 0x0

    .line 556
    .local v2, propertyName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 557
    .local v4, propertyValue:Ljava/lang/String;
    const/4 v3, 0x0

    .line 558
    .local v3, propertyNameAndValue:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 559
    .local v5, rslt:I
    const/4 v1, 0x0

    .line 560
    .local v1, isVcardGot:Z
    const/4 v0, 0x0

    .line 562
    .local v0, isEnvGot:Z
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    .line 563
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getPropertyNameAndValue()[Ljava/lang/String;

    move-result-object v3

    .line 564
    if-nez v3, :cond_2

    .line 565
    const-string v6, "bmessage.BMessageParser_V10"

    const-string v7, "Incompleted bMessage file, unexpected reaching the end of file!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/16 v5, 0x8

    .line 620
    :cond_1
    :goto_1
    const-string v6, "bmessage.BMessageParser_V10"

    const-string v7, "parseBmsgProperty() return the value of : %d ."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return v5

    .line 569
    :cond_2
    aget-object v2, v3, v10

    .line 570
    aget-object v4, v3, v9

    .line 571
    const-string v6, "bmessage.BMessageParser_V10"

    const-string v7, "Get propertyName = <%s>, propertyValue = <%s>."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v10

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v4, :cond_4

    .line 573
    :cond_3
    const-string v6, "bmessage.BMessageParser_V10"

    const-string v7, "Get property NameAndValue failed."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/16 v5, 0x8

    .line 575
    goto :goto_1

    .line 578
    :cond_4
    const-string v6, "END"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "BMSG"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 593
    :cond_5
    const-string v6, "BEGIN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 594
    if-nez v1, :cond_7

    const-string v6, "VCARD"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 599
    const/4 v1, 0x1

    .line 600
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->parseBmsgVcard()I

    move-result v5

    .line 615
    :cond_6
    :goto_2
    if-eqz v5, :cond_0

    .line 616
    const-string v6, "bmessage.BMessageParser_V10"

    const-string v7, "Process BMSG property return error."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 602
    :cond_7
    if-nez v0, :cond_6

    const-string v6, "BENV"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 607
    const/4 v0, 0x1

    .line 608
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->parseBmsgEnvelope()I

    move-result v5

    goto :goto_2

    .line 612
    :cond_8
    invoke-direct {p0, v2, v4}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleBmsgCommonProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_2
.end method

.method private parseBmsgVcard()I
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, propertyName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 632
    .local v2, propertyValue:Ljava/lang/String;
    const/4 v1, 0x0

    .line 633
    .local v1, propertyNameAndValue:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 635
    .local v3, rslt:I
    iput-boolean v8, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetTel:Z

    .line 636
    iput-boolean v8, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetEmail:Z

    .line 638
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 639
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getPropertyNameAndValue()[Ljava/lang/String;

    move-result-object v1

    .line 640
    if-nez v1, :cond_2

    .line 641
    const-string v4, "bmessage.BMessageParser_V10"

    const-string v5, "Incompleted bMessage file, unexpected reaching the end of file!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/16 v3, 0x8

    .line 694
    :cond_1
    :goto_1
    const-string v4, "bmessage.BMessageParser_V10"

    const-string v5, "parseBmsgVcard() return the value of : %d ."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return v3

    .line 645
    :cond_2
    aget-object v0, v1, v8

    .line 646
    aget-object v2, v1, v7

    .line 647
    const-string v4, "bmessage.BMessageParser_V10"

    const-string v5, "Get propertyName = <%s>, propertyValue = <%s>."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v8

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v2, :cond_4

    .line 649
    :cond_3
    const-string v4, "bmessage.BMessageParser_V10"

    const-string v5, "Get property NameAndValue failed."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/16 v3, 0x8

    .line 651
    goto :goto_1

    .line 654
    :cond_4
    const-string v4, "END"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "VCARD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 661
    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-gt v4, v7, :cond_1

    .line 662
    iget-boolean v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetTel:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetEmail:Z

    if-nez v4, :cond_1

    .line 672
    const-string v4, "TEL"

    const-string v5, ""

    invoke-direct {p0, v4, v5}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleBmsgVcardCommonProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 673
    if-eqz v3, :cond_1

    .line 674
    const-string v4, "bmessage.BMessageParser_V10"

    const-string v5, "handleBmsgVcardCommonProperty()1 in parseBmsgVcard() return error."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 686
    :cond_5
    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-gt v4, v7, :cond_0

    .line 687
    invoke-direct {p0, v0, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleBmsgVcardCommonProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 688
    if-eqz v3, :cond_0

    .line 689
    const-string v4, "bmessage.BMessageParser_V10"

    const-string v5, "handleBmsgVcardCommonProperty()2 in parseBmsgVcard() return error."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private parseMsgBodyData()I
    .locals 23

    .prologue
    .line 1415
    const/4 v15, 0x0

    .line 1416
    .local v15, rslt:I
    const/16 v17, 0x0

    .line 1417
    .local v17, tmpStr:Ljava/lang/String;
    const/16 v16, 0x0

    .line 1418
    .local v16, tmpBytes:[B
    const/4 v11, 0x0

    check-cast v11, [[B

    .line 1419
    .local v11, pdus:[[B
    const/4 v5, 0x0

    .line 1420
    .local v5, bodyStr:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1422
    .local v4, bodyBytesArray:Ljava/util/List;,"Ljava/util/List<[B>;"
    const-string v3, "BEGIN:MSG\r\n"

    .line 1423
    .local v3, beginStr:Ljava/lang/String;
    const-string v7, "\r\n"

    .line 1425
    .local v7, crlfStr:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1427
    .local v6, builder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    if-nez v4, :cond_2

    .line 1428
    :cond_0
    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "Invalid mBuilder in parseMsgBodyData()."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    const/16 v15, 0xe

    .line 1552
    :cond_1
    :goto_0
    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "parseMsgBodyData() return the value of : %d ."

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    return v15

    .line 1432
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/android/bmessage/BMessageBuilder;->getMessageStruct()Lcom/motorola/android/bmessage/MessageStruct;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageType()I

    move-result v10

    .line 1434
    .local v10, msgType:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_3

    .line 1436
    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "Got invalid message Type value from the Builder."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    const/4 v15, 0x3

    goto :goto_0

    .line 1439
    :cond_3
    if-eqz v10, :cond_4

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_f

    .line 1442
    :cond_4
    :goto_1
    if-nez v15, :cond_1

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1444
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getLine()Ljava/lang/String;

    move-result-object v17

    .line 1445
    if-eqz v17, :cond_7

    .line 1446
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string v19, "END:MSG"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1447
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-lez v18, :cond_5

    .line 1448
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1452
    :goto_2
    const/16 v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v15

    .line 1453
    goto :goto_0

    .line 1450
    :cond_5
    new-instance v5, Ljava/lang/String;

    .end local v5           #bodyStr:Ljava/lang/String;
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v5       #bodyStr:Ljava/lang/String;
    goto :goto_2

    .line 1455
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1459
    :cond_7
    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "Unexpected end of file!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const/16 v15, 0x8

    goto :goto_1

    .line 1463
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getPduBytes()[B

    move-result-object v16

    .line 1464
    if-eqz v16, :cond_9

    .line 1465
    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1468
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getLine()Ljava/lang/String;

    move-result-object v17

    .line 1469
    if-eqz v17, :cond_e

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string v19, "END:MSG"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1470
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->peekLine()Ljava/lang/String;

    move-result-object v17

    .line 1471
    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string v19, "BEGIN:MSG"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1473
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getLine()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 1474
    :cond_a
    if-nez v17, :cond_b

    .line 1475
    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "Unexpected end of file!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    const/16 v15, 0x8

    goto/16 :goto_1

    .line 1478
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_c

    .line 1479
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v11, v0, [[B

    .line 1482
    :cond_c
    if-eqz v11, :cond_d

    .line 1483
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_d

    .line 1484
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    aput-object v18, v11, v8

    .line 1483
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1487
    .end local v8           #i:I
    :cond_d
    const/16 v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(I[[B)I

    move-result v15

    .line 1488
    goto/16 :goto_0

    .line 1491
    :cond_e
    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "Unexpected end of file!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const/16 v15, 0x8

    goto/16 :goto_1

    .line 1497
    :cond_f
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v10, v0, :cond_10

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v10, v0, :cond_1

    .line 1501
    :cond_10
    const/4 v12, 0x0

    .line 1502
    .local v12, propertyName:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1503
    .local v14, propertyValue:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1504
    .local v13, propertyNameAndValue:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1506
    .local v9, isBodyBegin:Z
    :goto_4
    if-nez v15, :cond_1

    .line 1507
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getLine()Ljava/lang/String;

    move-result-object v17

    .line 1508
    if-eqz v17, :cond_18

    .line 1509
    if-nez v9, :cond_16

    .line 1510
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/motorola/android/bmessage/BMessageParser_V10;->separateLine(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1511
    const/16 v18, 0x0

    aget-object v12, v13, v18

    .line 1512
    const/16 v18, 0x1

    aget-object v14, v13, v18

    .line 1513
    const/16 v18, 0x0

    aget-object v18, v13, v18

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 1518
    const/4 v9, 0x1

    .line 1519
    const-string v18, "\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 1520
    :cond_11
    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "Message body data begins with the separating line."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1522
    :cond_12
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "Message body data directly begins the content."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1526
    :cond_13
    sget-object v18, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableEmailHeaderProperty:Ljava/util/HashSet;

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 1528
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleMsgBodyHeaderProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    goto :goto_4

    .line 1529
    :cond_14
    const-string v18, "END:MSG"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 1531
    const/16 v18, 0x10

    const-string v19, ""

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v15

    .line 1532
    goto/16 :goto_0

    .line 1534
    :cond_15
    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "Unsupported email header property is ignored."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1536
    :cond_16
    const-string v18, "END:MSG"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 1537
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1538
    const/16 v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v15

    .line 1539
    goto/16 :goto_0

    .line 1541
    :cond_17
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1545
    :cond_18
    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "Unexpected end of file!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    const/16 v15, 0x8

    goto/16 :goto_4
.end method

.method private parseOneBMessage()I
    .locals 6

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 271
    .local v0, rslt:I
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->readBMessageBegin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v2, "Invalid bMessage file without BEGIN:BMSG."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/16 v0, 0xc

    .line 309
    :goto_0
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v2, "parseOneBMessage() return the value of : %d ."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return v0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    if-nez v1, :cond_1

    .line 276
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v2, "Invalid mBuilder."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/16 v0, 0xe

    goto :goto_0

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1}, Lcom/motorola/android/bmessage/BMessageBuilder;->startRecord()I

    move-result v0

    .line 284
    if-eqz v0, :cond_2

    .line 285
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v2, "mBuilder.startRecord return error."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_2
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->parseBmsgProperty()I

    move-result v0

    .line 296
    if-eqz v0, :cond_3

    .line 297
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v2, "parseBmsgProperty() return error."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    :cond_3
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1}, Lcom/motorola/android/bmessage/BMessageBuilder;->endRecord()V

    goto :goto_0
.end method

.method private peekLine()Ljava/lang/String;
    .locals 8

    .prologue
    .line 394
    const/4 v2, 0x0

    .line 397
    .local v2, str:Ljava/lang/String;
    :try_start_0
    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mTotalBytes:I

    if-ge v1, v4, :cond_0

    .line 398
    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mTotalBytes:I

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    .line 399
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    iget v5, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    sub-int v6, v1, v6

    add-int/lit8 v6, v6, 0x1

    const-string v7, "UTF-8"

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v2           #str:Ljava/lang/String;
    .local v3, str:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    :cond_0
    :goto_1
    move-object v4, v2

    .line 418
    .end local v1           #i:I
    :goto_2
    return-object v4

    .line 404
    .restart local v1       #i:I
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    aget-byte v4, v4, v1

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    .line 405
    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    if-eq v1, v4, :cond_2

    .line 406
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    iget v5, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    sub-int v6, v1, v6

    const-string v7, "UTF-8"

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v2           #str:Ljava/lang/String;
    .restart local v3       #str:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    goto :goto_1

    .line 408
    :cond_2
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #str:Ljava/lang/String;
    .restart local v3       #str:Ljava/lang/String;
    move-object v2, v3

    .line 410
    .end local v3           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    goto :goto_1

    .line 397
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 414
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "bmessage.BMessageParser_V10"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read line failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private readBMessageBegin()Z
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, count:I
    const/4 v1, 0x0

    .line 322
    .local v1, findBMSGBegin:Z
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 324
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 326
    const-string v5, ":"

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, strArray:[Ljava/lang/String;
    array-length v2, v4

    .line 329
    .local v2, length:I
    if-ne v2, v8, :cond_3

    aget-object v5, v4, v9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BEGIN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    aget-object v5, v4, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BMSG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 332
    if-lez v0, :cond_1

    .line 333
    const-string v5, "bmessage.BMessageParser_V10"

    const-string v6, "There is %d invalid lines before BEGIN:BMSG. "

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_1
    const/4 v1, 0x1

    .line 344
    .end local v2           #length:I
    .end local v4           #strArray:[Ljava/lang/String;
    :cond_2
    return v1

    .line 339
    .restart local v2       #length:I
    .restart local v4       #strArray:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 341
    goto :goto_0
.end method

.method private separateLine(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "line"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 533
    const/4 v0, 0x0

    .line 535
    .local v0, indexMatch:I
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    const-string v2, ""

    aput-object v2, v1, v4

    .line 537
    .local v1, propertyNameAndValue:[Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 538
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 541
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 542
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 546
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    const-string v0, "1.0"

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;Lcom/motorola/android/bmessage/BMessageBuilder;)Z
    .locals 1
    .parameter "is"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/motorola/android/bmessage/exception/BMessageException;
        }
    .end annotation

    .prologue
    .line 178
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->parse(Ljava/io/InputStream;Lcom/motorola/android/bmessage/BMessageBuilder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;Lcom/motorola/android/bmessage/BMessageBuilder;Ljava/lang/String;)Z
    .locals 9
    .parameter "is"
    .parameter "builder"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/motorola/android/bmessage/exception/BMessageException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xd

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 184
    const/4 v2, 0x0

    .line 186
    .local v2, rslt:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    if-lt v4, v6, :cond_0

    if-nez p2, :cond_1

    .line 187
    :cond_0
    const-string v4, "bmessage.BMessageParser_V10"

    const-string v5, "Input stream or Builder is null or empty."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v4, Lcom/motorola/android/bmessage/exception/BMessageException;

    const/16 v5, 0xe

    const-string v6, "Input stream or Builder is null or emtpy."

    invoke-direct {v4, v5, v6}, Lcom/motorola/android/bmessage/exception/BMessageException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 192
    :cond_1
    invoke-direct {p0, p3}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleInputCharset(Ljava/lang/String;)I

    move-result v2

    .line 193
    if-eqz v2, :cond_2

    .line 194
    const-string v4, "bmessage.BMessageParser_V10"

    const-string v5, "handleInputCharset return error."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v4, Lcom/motorola/android/bmessage/exception/BMessageException;

    const-string v5, "BMessageException.BMSG_EXCEPTION_CODE_INPUT_CHARSET_UNSUPPORT"

    invoke-direct {v4, v2, v5}, Lcom/motorola/android/bmessage/exception/BMessageException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 211
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    .line 212
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    if-nez v4, :cond_3

    .line 213
    const-string v4, "bmessage.BMessageParser_V10"

    const-string v5, "Create input stream byte array failed."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v4, Lcom/motorola/android/bmessage/exception/BMessageException;

    const-string v5, "Create input stream byte array failed."

    invoke-direct {v4, v7, v5}, Lcom/motorola/android/bmessage/exception/BMessageException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 218
    :cond_3
    iput v8, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 223
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 225
    .local v3, tempByte:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 231
    .end local v3           #tempByte:I
    :cond_4
    iput v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mTotalBytes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    iput-object p2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    .line 245
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->parseOneBMessage()I

    move-result v2

    .line 246
    if-eqz v2, :cond_6

    .line 247
    new-instance v4, Lcom/motorola/android/bmessage/exception/BMessageException;

    const-string v5, "Parse bMessage failed with error code : %d ."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/motorola/android/bmessage/exception/BMessageException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 228
    .restart local v3       #tempByte:I
    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    int-to-byte v5, v3

    aput-byte v5, v4, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v3           #tempByte:I
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/io/IOException;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    .line 234
    const-string v4, "bmessage.BMessageParser_V10"

    const-string v5, "Initialize input stream byte array failed."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v4, Lcom/motorola/android/bmessage/exception/BMessageException;

    const-string v5, "Initialize input stream byte array failed."

    invoke-direct {v4, v7, v5}, Lcom/motorola/android/bmessage/exception/BMessageException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 250
    .end local v0           #e:Ljava/io/IOException;
    :cond_6
    return v6
.end method
