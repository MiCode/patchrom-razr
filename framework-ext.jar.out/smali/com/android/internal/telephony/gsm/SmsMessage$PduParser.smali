.class Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PduParser"
.end annotation


# instance fields
.field cur:I

.field mUserDataSeptetPadding:I

.field mUserDataSize:I

.field pdu:[B

.field userData:[B

.field userDataHeader:Lcom/android/internal/telephony/SmsHeader;


# direct methods
.method constructor <init>([B)V
    .locals 1
    .parameter "pdu"

    .prologue
    const/4 v0, 0x0

    .line 1143
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1144
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    .line 1145
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1146
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 1147
    return-void
.end method


# virtual methods
.method constructUserData(ZZ)I
    .locals 15
    .parameter "hasUserDataHeader"
    .parameter "dataInSeptets"

    .prologue
    .line 1302
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1303
    .local v6, offset:I
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6           #offset:I
    .local v7, offset:I
    aget-byte v11, v11, v6

    and-int/lit16 v10, v11, 0xff

    .line 1304
    .local v10, userDataLength:I
    const/4 v5, 0x0

    .line 1305
    .local v5, headerSeptets:I
    const/4 v9, 0x0

    .line 1307
    .local v9, userDataHeaderLength:I
    if-eqz p1, :cond_8

    .line 1308
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7           #offset:I
    .restart local v6       #offset:I
    aget-byte v11, v11, v7

    and-int/lit16 v9, v11, 0xff

    .line 1310
    new-array v8, v9, [B

    .line 1311
    .local v8, udh:[B
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    const/4 v12, 0x0

    invoke-static {v11, v6, v8, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1312
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1313
    add-int/2addr v6, v9

    .line 1315
    add-int/lit8 v11, v9, 0x1

    mul-int/lit8 v4, v11, 0x8

    .line 1316
    .local v4, headerBits:I
    div-int/lit8 v5, v4, 0x7

    .line 1317
    rem-int/lit8 v11, v4, 0x7

    if-lez v11, :cond_2

    const/4 v11, 0x1

    :goto_0
    add-int/2addr v5, v11

    .line 1318
    mul-int/lit8 v11, v5, 0x7

    sub-int/2addr v11, v4

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 1322
    .end local v4           #headerBits:I
    .end local v8           #udh:[B
    :goto_1
    if-eqz p2, :cond_5

    .line 1330
    mul-int/lit8 v2, v10, 0x7

    .line 1331
    .local v2, dataBits:I
    div-int/lit8 v3, v2, 0x8

    .line 1332
    .local v3, dataBytes:I
    rem-int/lit8 v11, v2, 0x8

    if-lez v11, :cond_3

    const/4 v11, 0x1

    :goto_2
    add-int/2addr v3, v11

    .line 1333
    if-eqz p1, :cond_4

    add-int/lit8 v11, v9, 0x1

    :goto_3
    sub-int v0, v3, v11

    .line 1346
    .end local v2           #dataBits:I
    .end local v3           #dataBytes:I
    .local v0, bufferLen:I
    :cond_0
    :goto_4
    new-array v11, v0, [B

    iput-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    .line 1347
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    array-length v14, v14

    invoke-static {v11, v6, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1348
    iput v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1350
    if-eqz p2, :cond_7

    .line 1352
    sub-int v1, v10, v5

    .line 1354
    .local v1, count:I
    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 1357
    .end local v1           #count:I
    :cond_1
    :goto_5
    return v1

    .line 1317
    .end local v0           #bufferLen:I
    .restart local v4       #headerBits:I
    .restart local v8       #udh:[B
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 1332
    .end local v4           #headerBits:I
    .end local v8           #udh:[B
    .restart local v2       #dataBits:I
    .restart local v3       #dataBytes:I
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 1333
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 1340
    .end local v2           #dataBits:I
    .end local v3           #dataBytes:I
    :cond_5
    if-eqz p1, :cond_6

    add-int/lit8 v11, v9, 0x1

    :goto_6
    sub-int v0, v10, v11

    .line 1341
    .restart local v0       #bufferLen:I
    if-gez v0, :cond_0

    .line 1342
    const/4 v0, 0x0

    goto :goto_4

    .line 1340
    .end local v0           #bufferLen:I
    :cond_6
    const/4 v11, 0x0

    goto :goto_6

    .line 1357
    .restart local v0       #bufferLen:I
    :cond_7
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    array-length v1, v11

    goto :goto_5

    .end local v0           #bufferLen:I
    .end local v6           #offset:I
    .restart local v7       #offset:I
    :cond_8
    move v6, v7

    .end local v7           #offset:I
    .restart local v6       #offset:I
    goto :goto_1
.end method

.method getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .locals 5

    .prologue
    .line 1197
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 1198
    .local v0, addressLength:I
    add-int/lit8 v3, v0, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, 0x2

    .line 1200
    .local v1, lengthBytes:I
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V

    .line 1202
    .local v2, ret:Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1204
    return-object v2
.end method

.method getByte()I
    .locals 3

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getSCAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1158
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1160
    .local v0, len:I
    if-nez v0, :cond_0

    .line 1162
    const/4 v1, 0x0

    .line 1174
    .local v1, ret:Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1176
    return-object v1

    .line 1166
    .end local v1           #ret:Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-static {v3, v4, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1168
    .end local v1           #ret:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1169
    .local v2, tr:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "invalid SC address: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1170
    const/4 v1, 0x0

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method getSCTimestampMillis()J
    .locals 15

    .prologue
    .line 1214
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v8

    .line 1215
    .local v8, year:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    .line 1216
    .local v3, month:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    .line 1217
    .local v0, day:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v1

    .line 1218
    .local v1, hour:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v2

    .line 1219
    .local v2, minute:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    .line 1226
    .local v4, second:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v7, v9, v10

    .line 1229
    .local v7, tzByte:B
    and-int/lit8 v9, v7, -0x9

    int-to-byte v9, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    .line 1231
    .local v6, timezoneOffset:I
    and-int/lit8 v9, v7, 0x8

    if-nez v9, :cond_0

    .line 1233
    :goto_0
    new-instance v5, Landroid/text/format/Time;

    const-string v9, "UTC"

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1236
    .local v5, time:Landroid/text/format/Time;
    const/16 v9, 0x5a

    if-lt v8, v9, :cond_1

    add-int/lit16 v9, v8, 0x76c

    :goto_1
    iput v9, v5, Landroid/text/format/Time;->year:I

    .line 1237
    add-int/lit8 v9, v3, -0x1

    iput v9, v5, Landroid/text/format/Time;->month:I

    .line 1238
    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 1239
    iput v1, v5, Landroid/text/format/Time;->hour:I

    .line 1240
    iput v2, v5, Landroid/text/format/Time;->minute:I

    .line 1241
    iput v4, v5, Landroid/text/format/Time;->second:I

    .line 1244
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    int-to-long v11, v6

    const-wide/16 v13, 0xf

    mul-long/2addr v11, v13

    const-wide/16 v13, 0x3c

    mul-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    sub-long/2addr v9, v11

    return-wide v9

    .line 1231
    .end local v5           #time:Landroid/text/format/Time;
    :cond_0
    neg-int v6, v6

    goto :goto_0

    .line 1236
    .restart local v5       #time:Landroid/text/format/Time;
    :cond_1
    add-int/lit16 v9, v8, 0x7d0

    goto :goto_1
.end method

.method getUserData()[B
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    return-object v0
.end method

.method getUserDataGSM7Bit(I)Ljava/lang/String;
    .locals 7
    .parameter "septetCount"

    .prologue
    .line 1440
    const/4 v4, 0x0

    .line 1441
    .local v4, singleShift:I
    const/4 v5, 0x0

    .line 1443
    .local v5, lockingShift:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1445
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v6

    .line 1454
    .local v6, ret:Ljava/lang/String;
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    mul-int/lit8 v1, p1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1456
    return-object v6
.end method

.method getUserDataGSM7Bit(III)Ljava/lang/String;
    .locals 7
    .parameter "septetCount"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v6

    .line 1405
    .local v6, ret:Ljava/lang/String;
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    mul-int/lit8 v1, p1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1407
    return-object v6
.end method

.method getUserDataGSM8bit(I)Ljava/lang/String;
    .locals 3
    .parameter "byteCount"

    .prologue
    .line 1421
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 1423
    .local v0, ret:Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1425
    return-object v0
.end method

.method getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method getUserDataKSC5601(I)Ljava/lang/String;
    .locals 5
    .parameter "byteCount"

    .prologue
    .line 1491
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    const-string v4, "KSC5601"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    .local v1, ret:Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1498
    return-object v1

    .line 1492
    .end local v1           #ret:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1493
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 1494
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "GSM"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getUserDataSeptetPadding()I
    .locals 1

    .prologue
    .line 1378
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    return v0
.end method

.method getUserDataUCS2(I)Ljava/lang/String;
    .locals 5
    .parameter "byteCount"

    .prologue
    .line 1470
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    const-string v4, "utf-16"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    .local v1, ret:Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1477
    return-object v1

    .line 1471
    .end local v1           #ret:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1472
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 1473
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "GSM"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getValidityPeriodMillis(I)J
    .locals 12
    .parameter "vpFormat"

    .prologue
    .line 1260
    packed-switch p1, :pswitch_data_0

    .line 1285
    const-wide/16 v0, -0x1

    .line 1288
    .local v0, ret:J
    :goto_0
    return-wide v0

    .line 1262
    .end local v0           #ret:J
    :pswitch_0
    const-wide/16 v0, -0x1

    .line 1263
    .restart local v0       #ret:J
    goto :goto_0

    .line 1265
    .end local v0           #ret:J
    :pswitch_1
    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v4, v4, 0x7

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1266
    const-wide/16 v0, -0x1

    .line 1267
    .restart local v0       #ret:J
    goto :goto_0

    .line 1269
    .end local v0           #ret:J
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    int-to-long v2, v4

    .line 1271
    .local v2, tmp:J
    const-wide/16 v4, 0x8f

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 1272
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    const-wide/16 v6, 0x5

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long v0, v4, v6

    .restart local v0       #ret:J
    goto :goto_0

    .line 1273
    .end local v0           #ret:J
    :cond_0
    const-wide/16 v4, 0xa7

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 1274
    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x2d0

    const-wide/16 v8, 0x1e

    const-wide/16 v10, 0x8f

    sub-long v10, v2, v10

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    mul-long v0, v4, v6

    .restart local v0       #ret:J
    goto :goto_0

    .line 1275
    .end local v0           #ret:J
    :cond_1
    const-wide/16 v4, 0xc4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    .line 1276
    const-wide/16 v4, 0xa6

    sub-long v4, v2, v4

    const-wide/16 v6, 0x18

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long v0, v4, v6

    .restart local v0       #ret:J
    goto :goto_0

    .line 1278
    .end local v0           #ret:J
    :cond_2
    const-wide/16 v4, 0xc0

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x18

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long v0, v4, v6

    .line 1280
    .restart local v0       #ret:J
    goto :goto_0

    .line 1282
    .end local v0           #ret:J
    .end local v2           #tmp:J
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v0

    .line 1283
    .restart local v0       #ret:J
    goto :goto_0

    .line 1260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method moreDataPresent()Z
    .locals 2

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
