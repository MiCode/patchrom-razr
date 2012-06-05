.class public Lcom/motorola/android/bmessage/SmsUtils;
.super Landroid/telephony/SmsMessage;
.source "SmsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/bmessage/SmsUtils$1;,
        Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BTSMSUtils"

.field public static final MODE_CDMA:I = 0x0

.field public static final MODE_UMTS:I = 0x1


# instance fields
.field private m_mode:I


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SmsMessageBase;I)V
    .locals 0
    .parameter "base"
    .parameter "mode"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/telephony/SmsMessage;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 38
    iput p2, p0, Lcom/motorola/android/bmessage/SmsUtils;->m_mode:I

    .line 39
    return-void
.end method

.method private static encodeDtmfSmsAddress(Ljava/lang/String;)[B
    .locals 10
    .parameter "address"

    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 148
    .local v3, digits:I
    mul-int/lit8 v1, v3, 0x4

    .line 149
    .local v1, dataBits:I
    div-int/lit8 v2, v1, 0x8

    .line 150
    .local v2, dataBytes:I
    rem-int/lit8 v7, v1, 0x8

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    add-int/2addr v2, v7

    .line 151
    new-array v5, v2, [B

    .line 152
    .local v5, rawData:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_5

    .line 153
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 154
    .local v0, c:C
    const/4 v6, 0x0

    .line 155
    .local v6, val:I
    const/16 v7, 0x31

    if-lt v0, v7, :cond_1

    const/16 v7, 0x39

    if-gt v0, v7, :cond_1

    add-int/lit8 v6, v0, -0x30

    .line 160
    :goto_2
    div-int/lit8 v7, v4, 0x2

    aget-byte v8, v5, v7

    rem-int/lit8 v9, v4, 0x2

    mul-int/lit8 v9, v9, 0x4

    rsub-int/lit8 v9, v9, 0x4

    shl-int v9, v6, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 152
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 150
    .end local v0           #c:C
    .end local v4           #i:I
    .end local v5           #rawData:[B
    .end local v6           #val:I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 156
    .restart local v0       #c:C
    .restart local v4       #i:I
    .restart local v5       #rawData:[B
    .restart local v6       #val:I
    :cond_1
    const/16 v7, 0x30

    if-ne v0, v7, :cond_2

    const/16 v6, 0xa

    goto :goto_2

    .line 157
    :cond_2
    const/16 v7, 0x2a

    if-ne v0, v7, :cond_3

    const/16 v6, 0xb

    goto :goto_2

    .line 158
    :cond_3
    const/16 v7, 0x23

    if-ne v0, v7, :cond_4

    const/16 v6, 0xc

    goto :goto_2

    .line 159
    :cond_4
    const/4 v5, 0x0

    .line 162
    .end local v0           #c:C
    .end local v5           #rawData:[B
    .end local v6           #val:I
    :cond_5
    return-object v5
.end method

.method private static getCDMATLDeliverPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;JLjava/lang/String;I)[B
    .locals 20
    .parameter "fromAddress"
    .parameter "userData"
    .parameter "timeStamp"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    .line 413
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v8

    .line 414
    .local v8, fromAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v8, :cond_0

    const/16 v17, 0x0

    .line 526
    :goto_0
    return-object v17

    .line 415
    :cond_0
    iget v0, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 417
    :try_start_0
    iget-object v0, v8, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "US-ASCII"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_1
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 427
    .local v3, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 428
    const/16 v17, 0x14

    move/from16 v0, v17

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 429
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 430
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 431
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 432
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 433
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 435
    if-eqz p4, :cond_1

    .line 436
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 439
    :cond_1
    move/from16 v0, p5

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 440
    move-object/from16 v0, p1

    iput-object v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 442
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v5

    .line 443
    .local v5, encodedBearerData:[B
    if-nez v5, :cond_3

    .line 444
    const/16 v17, 0x0

    goto :goto_0

    .line 418
    .end local v3           #bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v5           #encodedBearerData:[B
    :catch_0
    move-exception v7

    .line 419
    .local v7, ex:Ljava/io/UnsupportedEncodingException;
    const-string v17, "BTSMSUtils"

    const-string v18, "invalid SMS address, cannot convert to ASCII"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/16 v17, 0x0

    goto :goto_0

    .line 423
    .end local v7           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_2
    iget-object v0, v8, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/motorola/android/bmessage/SmsUtils;->encodeDtmfSmsAddress(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    goto :goto_1

    .line 447
    .restart local v3       #bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v5       #encodedBearerData:[B
    :cond_3
    const-wide/16 v17, 0x0

    cmp-long v17, p2, v17

    if-eqz v17, :cond_6

    .line 448
    array-length v0, v5

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 449
    .local v6, encodedBearerDataWithTime:[B
    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    array-length v13, v5

    .line 452
    .local v13, pos:I
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 453
    .local v16, time:Landroid/text/format/Time;
    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 454
    add-int/lit8 v14, v13, 0x1

    .end local v13           #pos:I
    .local v14, pos:I
    const/16 v17, 0x3

    aput-byte v17, v6, v13

    .line 455
    add-int/lit8 v13, v14, 0x1

    .end local v14           #pos:I
    .restart local v13       #pos:I
    const/16 v17, 0x5

    aput-byte v17, v6, v14

    .line 456
    add-int/lit8 v14, v13, 0x1

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0x7d0

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0xa

    shl-int/lit8 v17, v17, 0x4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    move/from16 v0, v18

    add-int/lit16 v0, v0, -0x7d0

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0xa

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v6, v13

    .line 458
    add-int/lit8 v13, v14, 0x1

    .end local v14           #pos:I
    .restart local v13       #pos:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0xa

    shl-int/lit8 v17, v17, 0x4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0xa

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v6, v14

    .line 460
    add-int/lit8 v14, v13, 0x1

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0xa

    shl-int/lit8 v17, v17, 0x4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0xa

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v6, v13

    .line 462
    add-int/lit8 v13, v14, 0x1

    .end local v14           #pos:I
    .restart local v13       #pos:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0xa

    shl-int/lit8 v17, v17, 0x4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0xa

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v6, v14

    .line 464
    add-int/lit8 v14, v13, 0x1

    .end local v13           #pos:I
    .restart local v14       #pos:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0xa

    shl-int/lit8 v17, v17, 0x4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0xa

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v6, v13

    .line 466
    add-int/lit8 v13, v14, 0x1

    .end local v14           #pos:I
    .restart local v13       #pos:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0xa

    shl-int/lit8 v17, v17, 0x4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0xa

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v6, v14

    .line 472
    .end local v13           #pos:I
    .end local v16           #time:Landroid/text/format/Time;
    :goto_2
    iget-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    const/16 v15, 0x1005

    .line 484
    .local v15, teleservice:I
    :goto_3
    :try_start_1
    new-instance v9, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 v17, 0x12c

    move/from16 v0, v17

    invoke-direct {v9, v0}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 486
    .local v9, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    const/16 v17, 0x8

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 488
    const/16 v17, 0x8

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 489
    const/16 v17, 0x8

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 490
    const/16 v17, 0x8

    const v18, 0xffff

    and-int v18, v18, v15

    shr-int/lit8 v18, v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 491
    const/16 v17, 0x8

    and-int/lit16 v0, v15, 0xff

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 493
    const/16 v17, 0x8

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 494
    const/16 v11, 0xa

    .line 495
    .local v11, paramBits:I
    const/4 v4, 0x0

    .line 496
    .local v4, dataBits:I
    iget v0, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 497
    add-int/lit8 v11, v11, 0x7

    .line 498
    iget v0, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v17, v0

    mul-int/lit8 v4, v17, 0x8

    .line 502
    :goto_4
    add-int/2addr v11, v4

    .line 503
    div-int/lit8 v18, v11, 0x8

    rem-int/lit8 v17, v11, 0x8

    if-lez v17, :cond_9

    const/16 v17, 0x1

    :goto_5
    add-int v12, v18, v17

    .line 504
    .local v12, paramBytes:I
    mul-int/lit8 v17, v12, 0x8

    sub-int v10, v17, v11

    .line 505
    .local v10, paddingBits:I
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v9, v0, v12}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 506
    const/16 v17, 0x1

    iget v0, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 507
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 508
    iget v0, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 509
    const/16 v17, 0x3

    iget v0, v8, Lcom/android/internal/telephony/SmsAddress;->ton:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 510
    const/16 v17, 0x4

    iget v0, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 512
    :cond_4
    const/16 v17, 0x8

    iget v0, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 513
    iget-object v0, v8, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v4, v0}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 514
    if-lez v10, :cond_5

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v10, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 517
    :cond_5
    const/16 v17, 0x8

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 518
    const/16 v17, 0x8

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 519
    array-length v0, v6

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v9, v0, v6}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 522
    invoke-virtual {v9}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v17

    goto/16 :goto_0

    .line 469
    .end local v4           #dataBits:I
    .end local v6           #encodedBearerDataWithTime:[B
    .end local v9           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    .end local v10           #paddingBits:I
    .end local v11           #paramBits:I
    .end local v12           #paramBytes:I
    .end local v15           #teleservice:I
    :cond_6
    move-object v6, v5

    .restart local v6       #encodedBearerDataWithTime:[B
    goto/16 :goto_2

    .line 472
    :cond_7
    const/16 v15, 0x1002

    goto/16 :goto_3

    .line 500
    .restart local v4       #dataBits:I
    .restart local v9       #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    .restart local v11       #paramBits:I
    .restart local v15       #teleservice:I
    :cond_8
    iget v0, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v17, v0
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_1

    mul-int/lit8 v4, v17, 0x4

    goto/16 :goto_4

    .line 503
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 523
    .end local v4           #dataBits:I
    .end local v9           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    .end local v11           #paramBits:I
    :catch_1
    move-exception v7

    .line 524
    .local v7, ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const-string v17, "BTSMSUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "creating deliverPdu failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method private static getCDMATLDeliverPdu(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)[[B
    .locals 16
    .parameter "fromAddress"
    .parameter "message"
    .parameter "timeStamp"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    .line 347
    const/4 v12, 0x0

    check-cast v12, [[B

    .line 348
    .local v12, pdus:[[B
    const/4 v10, 0x0

    .line 349
    .local v10, msgBody:Ljava/lang/String;
    const/4 v1, 0x0

    .line 351
    .local v1, address:Ljava/lang/String;
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 353
    const-string v1, "1111"

    .line 358
    :goto_0
    const/4 v3, 0x0

    invoke-static {v10, v3}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v8

    .line 360
    .local v8, encodingParams:[I
    const/4 v3, 0x0

    aget v3, v8, v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 361
    const/4 v3, 0x1

    new-array v12, v3, [[B

    .line 362
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 363
    .local v2, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v10, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 364
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 365
    const/4 v15, 0x0

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/motorola/android/bmessage/SmsUtils;->getCDMATLDeliverPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;JLjava/lang/String;I)[B

    move-result-object v3

    aput-object v3, v12, v15

    .line 366
    const/4 v3, 0x0

    aget-object v3, v12, v3

    if-nez v3, :cond_4

    .line 367
    const/4 v3, 0x0

    check-cast v3, [[B

    .line 396
    .end local v2           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :goto_1
    return-object v3

    .line 355
    .end local v8           #encodingParams:[I
    :cond_0
    move-object/from16 v10, p1

    .line 356
    move-object/from16 v1, p0

    goto :goto_0

    .line 370
    .restart local v8       #encodingParams:[I
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v14

    .line 371
    .local v14, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v14, v10}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 372
    .local v11, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v12, v3, [[B

    .line 374
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 375
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 376
    .local v7, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    const/16 v3, 0xc8

    iput v3, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 377
    add-int/lit8 v3, v9, 0x1

    iput v3, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 378
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 379
    const/4 v3, 0x1

    iput-boolean v3, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 380
    new-instance v13, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v13}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 381
    .local v13, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v7, v13, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 382
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 383
    .restart local v2       #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 384
    iput-object v13, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 385
    const/4 v3, 0x3

    aget v3, v8, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 386
    const/16 v3, 0x9

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    :goto_3
    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    .line 390
    invoke-static/range {v1 .. v6}, Lcom/motorola/android/bmessage/SmsUtils;->getCDMATLDeliverPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;JLjava/lang/String;I)[B

    move-result-object v3

    aput-object v3, v12, v9

    .line 391
    aget-object v3, v12, v9

    if-nez v3, :cond_3

    .line 392
    const/4 v3, 0x0

    check-cast v3, [[B

    goto :goto_1

    .line 388
    :cond_2
    const/4 v3, 0x4

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_3

    .line 374
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v2           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local v7           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v9           #i:I
    .end local v11           #parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v14           #smsManager:Landroid/telephony/SmsManager;
    :cond_4
    move-object v3, v12

    .line 396
    goto :goto_1
.end method

.method private static getCDMATLSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)[B
    .locals 14
    .parameter "destAddress"
    .parameter "userData"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    .line 243
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v3

    .line 244
    .local v3, destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v3, :cond_0

    const/4 v11, 0x0

    .line 330
    :goto_0
    return-object v11

    .line 245
    :cond_0
    iget v11, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 247
    :try_start_0
    iget-object v11, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const-string v12, "US-ASCII"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    iput-object v11, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_1
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 257
    .local v1, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v11, 0x2

    iput v11, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 258
    const/16 v11, 0x14

    iput v11, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 259
    const/4 v11, 0x0

    iput-boolean v11, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 260
    const/4 v11, 0x0

    iput-boolean v11, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 261
    const/4 v11, 0x0

    iput-boolean v11, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 262
    const/4 v11, 0x0

    iput-boolean v11, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 263
    const/4 v11, 0x1

    iput-boolean v11, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 265
    if-eqz p2, :cond_1

    .line 266
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v11

    iput-object v11, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 269
    :cond_1
    move/from16 v0, p3

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 270
    iput-object p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 272
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v4

    .line 273
    .local v4, encodedBearerData:[B
    if-nez v4, :cond_3

    .line 274
    const/4 v11, 0x0

    goto :goto_0

    .line 248
    .end local v1           #bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v4           #encodedBearerData:[B
    :catch_0
    move-exception v5

    .line 249
    .local v5, ex:Ljava/io/UnsupportedEncodingException;
    const-string v11, "BTSMSUtils"

    const-string v12, "invalid SMS address, cannot convert to ASCII"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v11, 0x0

    goto :goto_0

    .line 253
    .end local v5           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_2
    iget-object v11, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-static {v11}, Lcom/motorola/android/bmessage/SmsUtils;->encodeDtmfSmsAddress(Ljava/lang/String;)[B

    move-result-object v11

    iput-object v11, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    goto :goto_1

    .line 277
    .restart local v1       #bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v4       #encodedBearerData:[B
    :cond_3
    iget-boolean v11, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v11, :cond_6

    const/16 v10, 0x1005

    .line 289
    .local v10, teleservice:I
    :goto_2
    :try_start_1
    new-instance v6, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 v11, 0x12c

    invoke-direct {v6, v11}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 291
    .local v6, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 293
    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 294
    const/16 v11, 0x8

    const/4 v12, 0x2

    invoke-virtual {v6, v11, v12}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 295
    const/16 v11, 0x8

    const v12, 0xffff

    and-int/2addr v12, v10

    shr-int/lit8 v12, v12, 0x8

    invoke-virtual {v6, v11, v12}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 296
    const/16 v11, 0x8

    and-int/lit16 v12, v10, 0xff

    invoke-virtual {v6, v11, v12}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 298
    const/16 v11, 0x8

    const/4 v12, 0x4

    invoke-virtual {v6, v11, v12}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 299
    const/16 v8, 0xa

    .line 300
    .local v8, paramBits:I
    const/4 v2, 0x0

    .line 301
    .local v2, dataBits:I
    iget v11, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 302
    add-int/lit8 v8, v8, 0x7

    .line 303
    iget v11, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v2, v11, 0x8

    .line 307
    :goto_3
    add-int/2addr v8, v2

    .line 308
    div-int/lit8 v12, v8, 0x8

    rem-int/lit8 v11, v8, 0x8

    if-lez v11, :cond_8

    const/4 v11, 0x1

    :goto_4
    add-int v9, v12, v11

    .line 309
    .local v9, paramBytes:I
    mul-int/lit8 v11, v9, 0x8

    sub-int v7, v11, v8

    .line 310
    .local v7, paddingBits:I
    const/16 v11, 0x8

    invoke-virtual {v6, v11, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 311
    const/4 v11, 0x1

    iget v12, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v6, v11, v12}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 312
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 313
    iget v11, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 314
    const/4 v11, 0x3

    iget v12, v3, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v6, v11, v12}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 315
    const/4 v11, 0x4

    iget v12, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v6, v11, v12}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 317
    :cond_4
    const/16 v11, 0x8

    iget v12, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v6, v11, v12}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 318
    iget-object v11, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-virtual {v6, v2, v11}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 319
    if-lez v7, :cond_5

    const/4 v11, 0x0

    invoke-virtual {v6, v7, v11}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 321
    :cond_5
    const/16 v11, 0x8

    const/16 v12, 0x8

    invoke-virtual {v6, v11, v12}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 322
    const/16 v11, 0x8

    array-length v12, v4

    invoke-virtual {v6, v11, v12}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 323
    array-length v11, v4

    mul-int/lit8 v11, v11, 0x8

    invoke-virtual {v6, v11, v4}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 326
    invoke-virtual {v6}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v11

    goto/16 :goto_0

    .line 277
    .end local v2           #dataBits:I
    .end local v6           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    .end local v7           #paddingBits:I
    .end local v8           #paramBits:I
    .end local v9           #paramBytes:I
    .end local v10           #teleservice:I
    :cond_6
    const/16 v10, 0x1002

    goto/16 :goto_2

    .line 305
    .restart local v2       #dataBits:I
    .restart local v6       #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    .restart local v8       #paramBits:I
    .restart local v10       #teleservice:I
    :cond_7
    iget v11, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_1

    mul-int/lit8 v2, v11, 0x4

    goto :goto_3

    .line 308
    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    .line 327
    .end local v2           #dataBits:I
    .end local v6           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    .end local v8           #paramBits:I
    :catch_1
    move-exception v5

    .line 328
    .local v5, ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const-string v11, "BTSMSUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "creating deliverPdu failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private static getCDMATLSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[[B
    .locals 12
    .parameter "destAddress"
    .parameter "message"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    .line 178
    const/4 v6, 0x0

    check-cast v6, [[B

    .line 179
    .local v6, pdus:[[B
    const/4 v4, 0x0

    .line 180
    .local v4, msgBody:Ljava/lang/String;
    const/4 v0, 0x0

    .line 182
    .local v0, address:Ljava/lang/String;
    sget-object v10, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 183
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 184
    const-string v0, "1111"

    .line 189
    :goto_0
    const/4 v10, 0x0

    invoke-static {v4, v10}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v2

    .line 191
    .local v2, encodingParams:[I
    const/4 v10, 0x0

    aget v10, v2, v10

    const/4 v11, 0x1

    if-gt v10, v11, :cond_1

    .line 192
    const/4 v10, 0x1

    new-array v6, v10, [[B

    .line 193
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 194
    .local v9, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v4, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 195
    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 196
    const/4 v10, 0x0

    invoke-static {v0, v9, p2, p3}, Lcom/motorola/android/bmessage/SmsUtils;->getCDMATLSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)[B

    move-result-object v11

    aput-object v11, v6, v10

    .line 197
    const/4 v10, 0x0

    aget-object v10, v6, v10

    if-nez v10, :cond_4

    .line 198
    const/4 v10, 0x0

    check-cast v10, [[B

    .line 227
    .end local v9           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :goto_1
    return-object v10

    .line 186
    .end local v2           #encodingParams:[I
    :cond_0
    move-object v4, p1

    .line 187
    move-object v0, p0

    goto :goto_0

    .line 201
    .restart local v2       #encodingParams:[I
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v8

    .line 202
    .local v8, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v8, v4}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 203
    .local v5, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v6, v10, [[B

    .line 205
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_4

    .line 206
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 207
    .local v1, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    const/16 v10, 0xc8

    iput v10, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 208
    add-int/lit8 v10, v3, 0x1

    iput v10, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 209
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 210
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 211
    new-instance v7, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 212
    .local v7, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v7, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 213
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 214
    .restart local v9       #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 215
    iput-object v7, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 216
    const/4 v10, 0x3

    aget v10, v2, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 217
    const/16 v10, 0x9

    iput v10, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 221
    :goto_3
    invoke-static {v0, v9, p2, p3}, Lcom/motorola/android/bmessage/SmsUtils;->getCDMATLSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)[B

    move-result-object v10

    aput-object v10, v6, v3

    .line 222
    aget-object v10, v6, v3

    if-nez v10, :cond_3

    .line 223
    const/4 v10, 0x0

    check-cast v10, [[B

    goto :goto_1

    .line 219
    :cond_2
    const/4 v10, 0x4

    iput v10, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_3

    .line 205
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v3           #i:I
    .end local v5           #parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v8           #smsManager:Landroid/telephony/SmsManager;
    .end local v9           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_4
    move-object v10, v6

    .line 227
    goto :goto_1
.end method

.method public static getTLDeliverPdu(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)[[B
    .locals 1
    .parameter "mode"
    .parameter "fromAddress"
    .parameter "message"
    .parameter "timeStamp"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    .line 95
    if-nez p0, :cond_0

    .line 96
    invoke-static/range {p1 .. p6}, Lcom/motorola/android/bmessage/SmsUtils;->getCDMATLDeliverPdu(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)[[B

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTLDeliverPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getTLSubmitPdu(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)[[B
    .locals 2
    .parameter "mode"
    .parameter "destAddress"
    .parameter "message"
    .parameter "timeStamp"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    .line 117
    if-nez p0, :cond_0

    .line 118
    invoke-static {p1, p2, p5, p6}, Lcom/motorola/android/bmessage/SmsUtils;->getCDMATLSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[[B

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTLSubmitPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[[B

    move-result-object v0

    goto :goto_0
.end method

.method private static newFromCDMATLPDU([B)Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;
    .locals 23
    .parameter "part"

    .prologue
    .line 537
    new-instance v11, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;-><init>(Lcom/motorola/android/bmessage/SmsUtils$1;)V

    .line 538
    .local v11, msg:Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 539
    .local v5, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 546
    .local v2, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_0
    new-instance v9, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 548
    .local v9, inStream:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 549
    :cond_0
    :goto_0
    invoke-virtual {v9}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v18

    if-lez v18, :cond_b

    .line 550
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    .line 551
    .local v13, param:I
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v18

    mul-int/lit8 v10, v18, 0x8

    .line 553
    .local v10, length:I
    packed-switch v13, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 555
    :pswitch_1
    const/16 v18, 0x10

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    .line 556
    const-string v18, "BTSMSUtils"

    const-string v19, "Teleservice Identifier has wrong length"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v11, 0x0

    .line 663
    .end local v9           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v10           #length:I
    .end local v11           #msg:Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;
    .end local v13           #param:I
    :goto_1
    return-object v11

    .line 559
    .restart local v9       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v10       #length:I
    .restart local v11       #msg:Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;
    .restart local v13       #param:I
    :cond_1
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v18

    shl-int/lit8 v18, v18, 0x8

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v19

    or-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 560
    add-int/lit8 v18, v10, -0x10

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    .end local v9           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v10           #length:I
    .end local v13           #param:I
    :catch_0
    move-exception v6

    .line 641
    .local v6, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v18, "BTSMSUtils"

    const-string v19, "BitwiseOutputStream.AccessException"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/4 v11, 0x0

    goto :goto_1

    .line 563
    .end local v6           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    .restart local v9       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v10       #length:I
    .restart local v13       #param:I
    :pswitch_2
    const/16 v18, 0x10

    move/from16 v0, v18

    if-ge v10, v0, :cond_2

    .line 564
    :try_start_1
    const-string v18, "BTSMSUtils"

    const-string v19, "Service Category has wrong length"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v11, 0x0

    goto :goto_1

    .line 567
    :cond_2
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v18

    shl-int/lit8 v18, v18, 0x8

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v19

    or-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 568
    add-int/lit8 v18, v10, -0x10

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto/16 :goto_0

    .line 571
    :pswitch_3
    invoke-virtual {v9, v10}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto/16 :goto_0

    .line 574
    :pswitch_4
    invoke-virtual {v9, v10}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto/16 :goto_0

    .line 577
    :pswitch_5
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 578
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 579
    const/4 v7, 0x4

    .line 580
    .local v7, fieldBits:I
    const/4 v3, 0x2

    .line 581
    .local v3, consumedBits:I
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 582
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 583
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 584
    const/16 v7, 0x8

    .line 585
    add-int/lit8 v3, v3, 0x7

    .line 587
    :cond_3
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 588
    add-int/lit8 v3, v3, 0x8

    .line 589
    sub-int v14, v10, v3

    .line 590
    .local v14, remainingBits:I
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v18, v0

    mul-int v4, v18, v7

    .line 591
    .local v4, dataBits:I
    sub-int v12, v14, v4

    .line 592
    .local v12, paddingBits:I
    if-ge v14, v4, :cond_4

    .line 593
    const-string v18, "BTSMSUtils"

    const-string v19, "error decoding Originating Address"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 596
    :cond_4
    invoke-virtual {v9, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 597
    invoke-virtual {v9, v12}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 598
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v18, v0
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 602
    :try_start_2
    new-instance v18, Ljava/lang/String;

    iget-object v0, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const-string v22, "US-ASCII"

    invoke-direct/range {v18 .. v22}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 604
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isNBPCDEnable()Z

    move-result v18

    if-eqz v18, :cond_0

    iget v0, v2, Lcom/android/internal/telephony/SmsAddress;->ton:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    iget-object v0, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2b

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-eqz v18, :cond_0

    .line 606
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "+"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 607
    :catch_1
    move-exception v6

    .line 608
    .local v6, ex:Ljava/io/UnsupportedEncodingException;
    :try_start_3
    const-string v18, "BTSMSUtils"

    const-string v19, "error decoding Originating Address"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 612
    .end local v6           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_5
    new-instance v15, Ljava/lang/StringBuffer;

    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 613
    .local v15, strBuf:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_a

    .line 614
    iget-object v0, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v18, v0

    div-int/lit8 v19, v8, 0x2

    aget-byte v18, v18, v19

    rem-int/lit8 v19, v8, 0x2

    mul-int/lit8 v19, v19, 0x4

    rsub-int/lit8 v19, v19, 0x4

    ushr-int v18, v18, v19

    and-int/lit8 v17, v18, 0xf

    .line 615
    .local v17, val:I
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_6

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 616
    :cond_6
    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/16 v18, 0x30

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 617
    :cond_7
    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/16 v18, 0x2a

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 618
    :cond_8
    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/16 v18, 0x23

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 620
    :cond_9
    const-string v18, "BTSMSUtils"

    const-string v19, "error decoding Dtmf Sms Address"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 624
    .end local v17           #val:I
    :cond_a
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    goto/16 :goto_0

    .line 628
    .end local v3           #consumedBits:I
    .end local v4           #dataBits:I
    .end local v7           #fieldBits:I
    .end local v8           #i:I
    .end local v12           #paddingBits:I
    .end local v14           #remainingBits:I
    .end local v15           #strBuf:Ljava/lang/StringBuffer;
    :pswitch_6
    invoke-virtual {v9, v10}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto/16 :goto_0

    .line 631
    :pswitch_7
    invoke-virtual {v9, v10}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto/16 :goto_0

    .line 634
    :pswitch_8
    invoke-virtual {v9, v10}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B
    :try_end_3
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 647
    .end local v10           #length:I
    .end local v13           #param:I
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isNBPCDEnable()Z

    move-result v18

    if-eqz v18, :cond_c

    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    iget v0, v2, Lcom/android/internal/telephony/SmsAddress;->ton:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    iget-object v0, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-byte v18, v18, v19

    const/16 v19, 0x2b

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 651
    iget-object v0, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v16

    .line 652
    .local v16, temp:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "+"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 653
    invoke-static/range {v16 .. v16}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 654
    new-instance v16, Ljava/lang/String;

    .end local v16           #temp:Ljava/lang/String;
    iget-object v0, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 655
    .restart local v16       #temp:Ljava/lang/String;
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 657
    .end local v16           #temp:Ljava/lang/String;
    :cond_c
    iput-object v2, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 658
    #setter for: Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;
    invoke-static {v11, v2}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->access$102(Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;Lcom/android/internal/telephony/SmsAddress;)Lcom/android/internal/telephony/SmsAddress;

    .line 659
    invoke-virtual {v11, v5}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->setEnvelope(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    .line 662
    invoke-virtual {v11}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->parseMessage()V

    goto/16 :goto_1

    .line 553
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private static newFromCDMATLPDU([[B)Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;
    .locals 8
    .parameter "parts"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 667
    if-nez p0, :cond_0

    .line 694
    :goto_0
    return-object v4

    .line 671
    :cond_0
    aget-object v5, p0, v6

    aget-byte v2, v5, v6

    .line 672
    .local v2, msgType:B
    if-eqz v2, :cond_1

    .line 673
    const-string v5, "BTSMSUtils"

    const-string v6, "it is not SMS PDU, will return null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 676
    :cond_1
    array-length v5, p0

    new-array v3, v5, [Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;

    .line 677
    .local v3, msgs:[Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, p0

    if-ge v1, v5, :cond_3

    .line 678
    aget-object v5, p0, v1

    invoke-static {v5}, Lcom/motorola/android/bmessage/SmsUtils;->newFromCDMATLPDU([B)Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;

    move-result-object v5

    aput-object v5, v3, v1

    .line 679
    aget-object v5, v3, v1

    if-nez v5, :cond_2

    .line 680
    const-string v5, "BTSMSUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to decode segment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 677
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 684
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 685
    .local v0, body:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :goto_2
    array-length v4, p0

    if-ge v1, v4, :cond_4

    .line 686
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 689
    :cond_4
    aget-object v4, v3, v6

    invoke-virtual {v4}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->isEmail()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 690
    aget-object v4, v3, v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->setEmailBody(Ljava/lang/String;)V

    .line 694
    :goto_3
    aget-object v4, v3, v6

    goto :goto_0

    .line 692
    :cond_5
    aget-object v4, v3, v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->setMessageBody(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static newFromTLPDU(I[[B)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "mode"
    .parameter "parts"

    .prologue
    .line 134
    if-nez p0, :cond_0

    .line 135
    invoke-static {p1}, Lcom/motorola/android/bmessage/SmsUtils;->newFromCDMATLPDU([[B)Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;

    move-result-object v0

    .line 139
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_1

    .line 140
    new-instance v1, Lcom/motorola/android/bmessage/SmsUtils;

    invoke-direct {v1, v0, p0}, Lcom/motorola/android/bmessage/SmsUtils;-><init>(Lcom/android/internal/telephony/SmsMessageBase;I)V

    .line 142
    :goto_1
    return-object v1

    .line 137
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 142
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Lcom/motorola/android/bmessage/SmsUtils;->m_mode:I

    if-nez v0, :cond_0

    .line 699
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v0, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;

    invoke-virtual {v0}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    .line 701
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
