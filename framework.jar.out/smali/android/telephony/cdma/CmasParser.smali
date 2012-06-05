.class public Landroid/telephony/cdma/CmasParser;
.super Ljava/lang/Object;
.source "CmasParser.java"


# static fields
.field private static final LOCAL_DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CMASParser"


# instance fields
.field cmas:Landroid/telephony/CmasMessage;

.field uData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private extractSeptets([B)[B
    .locals 7
    .parameter "sepStream"

    .prologue
    .line 273
    const/4 v1, 0x0

    .line 275
    .local v1, expandedData:[B
    :try_start_0
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v3, p1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 276
    .local v3, inStream:Lcom/android/internal/util/BitwiseInputStream;
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x8

    div-int/lit8 v4, v5, 0x7

    .line 277
    .local v4, wantedFields:I
    new-array v1, v4, [B

    .line 278
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 279
    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v2
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v2           #i:I
    .end local v3           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v4           #wantedFields:I
    :catch_0
    move-exception v0

    .line 282
    .local v0, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v5, "CMASParser"

    const-string v6, "Access Exception in Bitstream"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v0           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :cond_0
    return-object v1
.end method

.method private parseERecordOne(II)V
    .locals 3
    .parameter "index"
    .parameter "eRecordLen"

    .prologue
    .line 214
    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v2, p0, Landroid/telephony/cdma/CmasParser;->uData:[B

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, index:I
    aget-byte v2, v2, p1

    iput-byte v2, v1, Landroid/telephony/CmasMessage;->cmaeCategory:B

    .line 216
    iget-object v1, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v2, p0, Landroid/telephony/cdma/CmasParser;->uData:[B

    add-int/lit8 p1, v0, 0x1

    .end local v0           #index:I
    .restart local p1
    aget-byte v2, v2, v0

    iput-byte v2, v1, Landroid/telephony/CmasMessage;->cmaeResponseType:B

    .line 217
    iget-object v1, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v2, p0, Landroid/telephony/cdma/CmasParser;->uData:[B

    aget-byte v2, v2, p1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    iput v2, v1, Landroid/telephony/CmasMessage;->cmaeSeverity:I

    .line 218
    iget-object v1, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v2, p0, Landroid/telephony/cdma/CmasParser;->uData:[B

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #index:I
    aget-byte v2, v2, p1

    and-int/lit8 v2, v2, 0xf

    iput v2, v1, Landroid/telephony/CmasMessage;->cmaeUrgency:I

    .line 219
    iget-object v1, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v2, p0, Landroid/telephony/cdma/CmasParser;->uData:[B

    aget-byte v2, v2, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    iput v2, v1, Landroid/telephony/CmasMessage;->cmaeCertainty:I

    move p1, v0

    .line 220
    .end local v0           #index:I
    .restart local p1
    goto :goto_0
.end method

.method private parseERecordZero(II)V
    .locals 13
    .parameter "index"
    .parameter "eRecordLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/CmasException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x5a

    const/4 v10, 0x0

    .line 134
    iget-object v8, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v9, p0, Landroid/telephony/cdma/CmasParser;->uData:[B

    aget-byte v9, v9, p1

    shr-int/lit8 v9, v9, 0x3

    and-int/lit8 v9, v9, 0x1f

    iput v9, v8, Landroid/telephony/CmasMessage;->cmaeCharSet:I

    .line 135
    new-array v0, p2, [B

    .line 136
    .local v0, alertText:[B
    iget-object v8, p0, Landroid/telephony/cdma/CmasParser;->uData:[B

    invoke-static {v8, p1, v0, v10, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    aget-byte v8, v0, v10

    and-int/lit8 v8, v8, 0x7

    int-to-byte v8, v8

    aput-byte v8, v0, v10

    .line 139
    iget-object v8, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    const-string v9, ""

    iput-object v9, v8, Landroid/telephony/CmasMessage;->cmaeAlertText:Ljava/lang/String;

    .line 142
    :try_start_0
    iget-object v8, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget v8, v8, Landroid/telephony/CmasMessage;->cmaeCharSet:I

    sparse-switch v8, :sswitch_data_0

    .line 186
    iget-object v8, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    const-string v9, ""

    iput-object v9, v8, Landroid/telephony/CmasMessage;->cmaeAlertText:Ljava/lang/String;

    .line 189
    :cond_0
    :goto_0
    iget-object v8, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v9, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v9, v9, Landroid/telephony/CmasMessage;->cmaeAlertText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    iput v9, v8, Landroid/telephony/CmasMessage;->cmaeAlertTextLength:I

    .line 191
    const-string v8, "CMASParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cmas.cmaeAlertTextLength = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget v10, v10, Landroid/telephony/CmasMessage;->cmaeAlertTextLength:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v8, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget v8, v8, Landroid/telephony/CmasMessage;->cmaeAlertTextLength:I

    if-nez v8, :cond_3

    .line 195
    const-string v8, "CMASParser"

    const-string v9, "Empty content or Unsupported charset"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v8, Landroid/telephony/CmasException;

    const-string v9, "Empty content or Unsupported charset"

    invoke-direct {v8, v9}, Landroid/telephony/CmasException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :catch_0
    move-exception v2

    .line 204
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    const-string v8, "CMASParser"

    const-string v9, "Unsupported Encoding Exception in Record 0"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_1
    return-void

    .line 144
    :sswitch_0
    const/4 v7, 0x5

    .line 145
    .local v7, unusedBits:I
    mul-int/lit8 v8, p2, 0x8

    sub-int/2addr v8, v7

    :try_start_1
    div-int/lit8 v4, v8, 0x7

    .line 146
    .local v4, lengthSeptets:I
    invoke-direct {p0, v0}, Landroid/telephony/cdma/CmasParser;->stripOff5Bits([B)[B

    move-result-object v6

    .line 147
    .local v6, septets:[B
    if-eqz v6, :cond_0

    .line 148
    invoke-direct {p0, v6}, Landroid/telephony/cdma/CmasParser;->extractSeptets([B)[B

    move-result-object v6

    .line 149
    if-eqz v6, :cond_0

    .line 150
    iget-object v8, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "US-ASCII"

    invoke-direct {v9, v6, v10, v4, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v9, v8, Landroid/telephony/CmasMessage;->cmaeAlertText:Ljava/lang/String;

    goto :goto_0

    .line 163
    .end local v4           #lengthSeptets:I
    .end local v6           #septets:[B
    .end local v7           #unusedBits:I
    :sswitch_1
    array-length v8, v0

    new-array v5, v8, [B

    .line 164
    .local v5, reversed:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v8, v0

    if-ge v3, v8, :cond_2

    .line 165
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v3

    aget-byte v8, v0, v8

    aput-byte v8, v5, v3

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 171
    :cond_2
    mul-int/lit8 v8, p2, 0x8

    add-int/lit8 v8, v8, -0x5

    rem-int/lit8 v7, v8, 0x7

    .line 172
    .restart local v7       #unusedBits:I
    mul-int/lit8 v8, p2, 0x8

    sub-int/2addr v8, v7

    div-int/lit8 v4, v8, 0x7

    .line 173
    .restart local v4       #lengthSeptets:I
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-static {v5, v8, v4, v7}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIII)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, alertTextBuilder:Ljava/lang/StringBuilder;
    iget-object v8, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/telephony/CmasMessage;->cmaeAlertText:Ljava/lang/String;

    goto/16 :goto_0

    .line 179
    .end local v1           #alertTextBuilder:Ljava/lang/StringBuilder;
    .end local v3           #i:I
    .end local v4           #lengthSeptets:I
    .end local v5           #reversed:[B
    .end local v7           #unusedBits:I
    :sswitch_2
    invoke-direct {p0, v0}, Landroid/telephony/cdma/CmasParser;->stripOff5Bits([B)[B

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    iget-object v8, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    new-instance v9, Ljava/lang/String;

    const-string v10, "UTF-16"

    invoke-direct {v9, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v9, v8, Landroid/telephony/CmasMessage;->cmaeAlertText:Ljava/lang/String;

    goto/16 :goto_0

    .line 197
    :cond_3
    iget-object v8, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget v8, v8, Landroid/telephony/CmasMessage;->cmaeAlertTextLength:I

    if-le v8, v12, :cond_1

    .line 199
    iget-object v8, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v9, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v9, v9, Landroid/telephony/CmasMessage;->cmaeAlertText:Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x5a

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/telephony/CmasMessage;->cmaeAlertText:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 142
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private stripOff5Bits([B)[B
    .locals 6
    .parameter "array"

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 255
    .local v2, strippedArray:[B
    :try_start_0
    new-instance v1, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v1, p1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 256
    .local v1, inStream:Lcom/android/internal/util/BitwiseInputStream;
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v4, -0x5

    .line 257
    .local v3, wantedBits:I
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 258
    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 261
    .end local v1           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v3           #wantedBits:I
    :goto_0
    return-object v4

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v4, "CMASParser"

    const-string v5, "Access Exception in Bitstream"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public parseBroadcastSms(Landroid/telephony/SmsMessage;)Landroid/telephony/CmasMessage;
    .locals 10
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/CmasException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    .line 43
    new-instance v6, Landroid/telephony/CmasMessage;

    invoke-direct {v6}, Landroid/telephony/CmasMessage;-><init>()V

    iput-object v6, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    .line 45
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPriority()I

    move-result v6

    if-eq v6, v9, :cond_0

    .line 46
    new-instance v6, Landroid/telephony/CmasException;

    const-string v7, "Priority is not set to 0x3 (Emergency)"

    invoke-direct {v6, v7}, Landroid/telephony/CmasException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCategory()I

    move-result v6

    const/16 v7, 0x1000

    if-lt v6, v7, :cond_1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCategory()I

    move-result v6

    const/16 v7, 0x1004

    if-le v6, v7, :cond_2

    .line 50
    :cond_1
    new-instance v6, Landroid/telephony/CmasException;

    const-string v7, "Invalid Service Category"

    invoke-direct {v6, v7}, Landroid/telephony/CmasException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 53
    :cond_2
    const-string v6, "CMASParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "msg.getMessageId in CMAS parser is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v6, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageId()I

    move-result v7

    iput v7, v6, Landroid/telephony/CmasMessage;->cmaeIdentifier:I

    .line 58
    iget-object v6, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCategory()I

    move-result v7

    iput v7, v6, Landroid/telephony/CmasMessage;->cmasService:I

    .line 60
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getLanguage()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getLanguage()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    .line 62
    new-instance v6, Landroid/telephony/CmasException;

    const-string v7, "Language is not set to English"

    invoke-direct {v6, v7}, Landroid/telephony/CmasException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 65
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v6

    iput-object v6, p0, Landroid/telephony/cdma/CmasParser;->uData:[B

    .line 66
    iget-object v6, p0, Landroid/telephony/cdma/CmasParser;->uData:[B

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/telephony/cdma/CmasParser;->uData:[B

    array-length v6, v6

    if-ge v6, v9, :cond_5

    .line 67
    :cond_4
    const-string v6, "CMASParser"

    const-string v7, "Received SMS without user data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v6, Landroid/telephony/CmasException;

    const-string v7, "Insufficient or no User Data"

    invoke-direct {v6, v7}, Landroid/telephony/CmasException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 71
    :cond_5
    const/4 v4, 0x0

    .line 73
    .local v4, index:I
    iget-object v6, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v7, p0, Landroid/telephony/cdma/CmasParser;->uData:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    aget-byte v7, v7, v4

    iput-byte v7, v6, Landroid/telephony/CmasMessage;->cmaeProtocolVersion:B

    .line 74
    iget-object v6, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-byte v6, v6, Landroid/telephony/CmasMessage;->cmaeProtocolVersion:B

    if-eqz v6, :cond_6

    .line 75
    const-string v6, "CMASParser"

    const-string v7, "CMAE Protocol is not 0x00"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v6, Landroid/telephony/CmasException;

    const-string v7, "CMAE Protocol is not 0x00"

    invoke-direct {v6, v7}, Landroid/telephony/CmasException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 80
    :cond_6
    const/4 v1, 0x0

    .local v1, eRecordOnePresent:Z
    move v3, v1

    .local v3, eRecordZeroPresent:I
    move v4, v5

    .line 82
    .end local v3           #eRecordZeroPresent:I
    .end local v5           #index:I
    .restart local v4       #index:I
    :goto_0
    iget-object v6, p0, Landroid/telephony/cdma/CmasParser;->uData:[B

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_7

    .line 85
    iget-object v6, p0, Landroid/telephony/cdma/CmasParser;->uData:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    aget-byte v2, v6, v4

    .line 88
    .local v2, eRecordType:I
    iget-object v6, p0, Landroid/telephony/cdma/CmasParser;->uData:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    aget-byte v6, v6, v5

    and-int/lit16 v0, v6, 0xff

    .line 89
    .local v0, eRecordLen:I
    const-string v6, "CMASParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Record type is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    add-int v6, v4, v0

    iget-object v7, p0, Landroid/telephony/cdma/CmasParser;->uData:[B

    array-length v7, v7

    if-le v6, v7, :cond_8

    .line 120
    .end local v0           #eRecordLen:I
    .end local v2           #eRecordType:I
    :cond_7
    if-nez v3, :cond_a

    .line 121
    const-string v6, "CMASParser"

    const-string v7, "No E Record 0 present in CMAS message"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v6, Landroid/telephony/CmasException;

    const-string v7, "No E Record 0 present in CMAS message"

    invoke-direct {v6, v7}, Landroid/telephony/CmasException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 93
    .restart local v0       #eRecordLen:I
    .restart local v2       #eRecordType:I
    :cond_8
    packed-switch v2, :pswitch_data_0

    .line 118
    :cond_9
    :goto_1
    add-int/2addr v4, v0

    .line 119
    goto :goto_0

    .line 95
    :pswitch_0
    if-nez v3, :cond_9

    .line 96
    const/4 v3, 0x1

    .line 97
    .local v3, eRecordZeroPresent:Z
    invoke-direct {p0, v4, v0}, Landroid/telephony/cdma/CmasParser;->parseERecordZero(II)V

    goto :goto_1

    .line 101
    .end local v3           #eRecordZeroPresent:Z
    :pswitch_1
    if-nez v1, :cond_9

    .line 102
    const/4 v1, 0x1

    .line 103
    invoke-direct {p0, v4, v0}, Landroid/telephony/cdma/CmasParser;->parseERecordOne(II)V

    goto :goto_1

    .line 124
    .end local v0           #eRecordLen:I
    .end local v2           #eRecordType:I
    :cond_a
    iget-object v6, p0, Landroid/telephony/cdma/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    return-object v6

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
