.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$CommandPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final MAX_COMMAND_DATA:I = 0x92

.field public static final TP_DCS__NO_CLASS__UCS2__UNCOMPRESSED:I = 0x8

.field public static final VALIDITY_PERIOD_FORMAT_ABSOLUTE:I = 0x3

.field public static final VALIDITY_PERIOD_FORMAT_ENHANCED:I = 0x1

.field public static final VALIDITY_PERIOD_FORMAT_NONE:I = 0x0

.field public static final VALIDITY_PERIOD_FORMAT_RELATIVE:I = 0x2

.field private static sConcatRefNum:I


# instance fields
.field private automaticDeletion:Z

.field private dataCodingScheme:I

.field private dischargeTimeMillis:J

.field private firstOctet:I

.field private forSubmit:Z

.field protected isMwiUdh:Z

.field private isStatusReportMessage:Z

.field private messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field private mti:I

.field protected mwiUdhVmCount:I

.field private protocolIdentifier:I

.field private recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field private replyPathPresent:Z

.field private status:I

.field vpTimeFormat:I

.field vpTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 119
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpTimeFormat:I

    .line 120
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpTimeMillis:J

    .line 139
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->firstOctet:I

    .line 145
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 171
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 2218
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 9
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1574
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v4

    .line 1576
    .local v4, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-nez v4, :cond_2

    .line 1577
    new-instance v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .end local v4           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-direct {v4}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 1579
    .restart local v4       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    mul-int/lit8 v2, v7, 0x2

    .line 1580
    .local v2, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1581
    const/16 v7, 0x8c

    if-le v2, v7, :cond_5

    .line 1583
    const/16 v1, 0x86

    .line 1589
    .local v1, max_user_data_bytes_with_header:I
    const-string v7, "ro.telephony.gsm-routes-us-smsc"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    if-ne v7, v5, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "20404"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1596
    const/16 v7, 0x4a4

    if-gt v2, v7, :cond_0

    .line 1597
    add-int/lit8 v1, v1, -0x2

    .line 1599
    :cond_0
    rem-int v3, v2, v1

    .line 1600
    .local v3, remainder:I
    if-eqz v3, :cond_3

    move v0, v5

    .line 1601
    .local v0, hasRemainder:Z
    :goto_0
    div-int v7, v2, v1

    if-eqz v0, :cond_4

    :goto_1
    add-int/2addr v5, v7

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1602
    if-eqz v0, :cond_1

    sub-int v5, v1, v3

    div-int/lit8 v6, v5, 0x2

    :cond_1
    iput v6, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1609
    .end local v0           #hasRemainder:Z
    .end local v1           #max_user_data_bytes_with_header:I
    .end local v3           #remainder:I
    :goto_2
    const/4 v5, 0x3

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1612
    .end local v2           #octets:I
    :cond_2
    return-object v4

    .restart local v1       #max_user_data_bytes_with_header:I
    .restart local v2       #octets:I
    .restart local v3       #remainder:I
    :cond_3
    move v0, v6

    .line 1600
    goto :goto_0

    .restart local v0       #hasRemainder:Z
    :cond_4
    move v5, v6

    .line 1601
    goto :goto_1

    .line 1606
    .end local v0           #hasRemainder:Z
    .end local v1           #max_user_data_bytes_with_header:I
    .end local v3           #remainder:I
    :cond_5
    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1607
    rsub-int v5, v2, 0x8c

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 9
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "ifSupportNationalTable"
    .parameter "ifSupportLockingShiftTable"
    .parameter "language"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1521
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZZZLjava/lang/String;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v4

    .line 1524
    .local v4, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-nez v4, :cond_2

    .line 1525
    new-instance v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .end local v4           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-direct {v4}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 1527
    .restart local v4       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    mul-int/lit8 v2, v7, 0x2

    .line 1528
    .local v2, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1529
    const/16 v7, 0x8c

    if-le v2, v7, :cond_5

    .line 1531
    const/16 v1, 0x86

    .line 1537
    .local v1, max_user_data_bytes_with_header:I
    const-string v7, "ro.telephony.gsm-routes-us-smsc"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    if-ne v7, v5, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "20404"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1544
    const/16 v7, 0x4a4

    if-gt v2, v7, :cond_0

    .line 1545
    add-int/lit8 v1, v1, -0x2

    .line 1547
    :cond_0
    rem-int v3, v2, v1

    .line 1548
    .local v3, remainder:I
    if-eqz v3, :cond_3

    move v0, v5

    .line 1549
    .local v0, hasRemainder:Z
    :goto_0
    div-int v7, v2, v1

    if-eqz v0, :cond_4

    :goto_1
    add-int/2addr v5, v7

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1550
    if-eqz v0, :cond_1

    sub-int v5, v1, v3

    div-int/lit8 v6, v5, 0x2

    :cond_1
    iput v6, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1557
    .end local v0           #hasRemainder:Z
    .end local v1           #max_user_data_bytes_with_header:I
    .end local v3           #remainder:I
    :goto_2
    const/4 v5, 0x3

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1559
    .end local v2           #octets:I
    :cond_2
    return-object v4

    .restart local v1       #max_user_data_bytes_with_header:I
    .restart local v2       #octets:I
    .restart local v3       #remainder:I
    :cond_3
    move v0, v6

    .line 1548
    goto :goto_0

    .restart local v0       #hasRemainder:Z
    :cond_4
    move v5, v6

    .line 1549
    goto :goto_1

    .line 1554
    .end local v0           #hasRemainder:Z
    .end local v1           #max_user_data_bytes_with_header:I
    .end local v3           #remainder:I
    :cond_5
    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1555
    rsub-int v5, v2, 0x8c

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2
.end method

.method public static concatByteArray([B[B)[B
    .locals 5
    .parameter "b1"
    .parameter "b2"

    .prologue
    const/4 v3, 0x0

    .line 176
    if-nez p0, :cond_2

    move v0, v3

    .line 177
    .local v0, len1:I
    :goto_0
    if-nez p1, :cond_3

    move v1, v3

    .line 178
    .local v1, len2:I
    :goto_1
    add-int v4, v0, v1

    new-array v2, v4, [B

    .line 180
    .local v2, sum:[B
    if-eqz p0, :cond_0

    .line 181
    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    :cond_0
    if-eqz p1, :cond_1

    .line 184
    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    :cond_1
    return-object v2

    .line 176
    .end local v0           #len1:I
    .end local v1           #len2:I
    .end local v2           #sum:[B
    :cond_2
    array-length v0, p0

    goto :goto_0

    .line 177
    .restart local v0       #len1:I
    :cond_3
    array-length v1, p1

    goto :goto_1
.end method

.method private static createAConcatRefNum()I
    .locals 1

    .prologue
    .line 805
    sget v0, Lcom/android/internal/telephony/gsm/SmsMessage;->sConcatRefNum:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/gsm/SmsMessage;->sConcatRefNum:I

    .line 806
    sget v0, Lcom/android/internal/telephony/gsm/SmsMessage;->sConcatRefNum:I

    return v0
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 7
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 312
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 314
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    .line 319
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 320
    const-string v5, "GSM"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 337
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 324
    .restart local v1       #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    .line 327
    array-length v5, p1

    add-int/lit8 v3, v5, -0x1

    .line 331
    .local v3, size:I
    new-array v2, v3, [B

    .line 332
    .local v2, pdu:[B
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v0

    .line 336
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v5, "GSM"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 337
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "pdu"

    .prologue
    .line 222
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 224
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :try_start_0
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-object v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->setEmpty()V

    goto :goto_0
.end method

.method private static createUCS2MessageCsmp(Ljava/lang/String;[BLjava/io/ByteArrayOutputStream;II)Z
    .locals 9
    .parameter "message"
    .parameter "header"
    .parameter "bo"
    .parameter "fo"
    .parameter "vp"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2891
    const-string v6, "GSM"

    const-string v7, "createUCS2MessageCsmp: createUCS2MessageCsmp enter"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    :try_start_0
    const-string v6, "utf-16be"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2899
    .local v0, textPart:[B
    if-eqz p1, :cond_0

    .line 2901
    array-length v6, p1

    array-length v7, v0

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    new-array v2, v6, [B

    .line 2903
    .local v2, userData:[B
    array-length v6, p1

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    .line 2904
    array-length v6, p1

    invoke-static {p1, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2905
    array-length v6, p1

    add-int/lit8 v6, v6, 0x1

    array-length v7, v0

    invoke-static {v0, v4, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2911
    :goto_0
    array-length v6, v2

    const/16 v7, 0x8c

    if-le v6, v7, :cond_1

    .line 2912
    const-string v5, "GSM"

    const-string v6, "createUCS2MessageCsmp: createUCS2MessageCsmp - Message too long"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    .end local v0           #textPart:[B
    .end local v2           #userData:[B
    :goto_1
    return v4

    .line 2894
    :catch_0
    move-exception v1

    .line 2895
    .local v1, uex:Ljava/io/UnsupportedEncodingException;
    const-string v5, "GSM"

    const-string v6, "createUCS2MessageCsmp: Implausible UnsupportedEncodingException "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2908
    .end local v1           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #textPart:[B
    :cond_0
    move-object v2, v0

    .restart local v2       #userData:[B
    goto :goto_0

    .line 2918
    :cond_1
    const/16 v6, 0x8

    invoke-virtual {p2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2921
    and-int/lit8 v6, p3, 0x18

    shr-int/lit8 v3, v6, 0x3

    .line 2922
    .local v3, vp_format:I
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 2923
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createUCS2MessageCsmp: write vp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    invoke-virtual {p2, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2928
    :cond_2
    array-length v6, v2

    invoke-virtual {p2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2930
    array-length v6, v2

    invoke-virtual {p2, v2, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move v4, v5

    .line 2931
    goto :goto_1
.end method

.method private static deNullify(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "s"

    .prologue
    .line 880
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0
    :cond_0
    return-object p0
.end method

.method private static encodeKSC5601(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 766
    const-string v3, "EUC_KR"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 768
    .local v1, textPart:[B
    if-eqz p1, :cond_0

    .line 770
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 772
    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 773
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 774
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 779
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 780
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 781
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    return-object v0

    .line 777
    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 737
    const-string v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 739
    .local v1, textPart:[B
    if-eqz p1, :cond_0

    .line 741
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 743
    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 744
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 750
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 751
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 752
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 753
    return-object v0

    .line 748
    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method public static getCommandPdu(Ljava/lang/String;Ljava/lang/String;BBBB[B)Lcom/android/internal/telephony/gsm/SmsMessage$CommandPdu;
    .locals 9
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "firstOctet"
    .parameter "protocolId"
    .parameter "cmdType"
    .parameter "msgNumber"
    .parameter "cmdData"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2762
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsMessage$CommandPdu;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SmsMessage$CommandPdu;-><init>()V

    .line 2764
    .local v3, ret:Lcom/android/internal/telephony/gsm/SmsMessage$CommandPdu;
    if-nez p0, :cond_1

    .line 2765
    iput-object v6, v3, Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;->encodedScAddress:[B

    .line 2771
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0xb4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2773
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2775
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2776
    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2777
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2778
    invoke-virtual {v0, p5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2780
    if-nez p1, :cond_2

    .line 2781
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2782
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2797
    :cond_0
    :goto_1
    if-nez p6, :cond_4

    .line 2798
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2808
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;->encodedCommand:[B

    .line 2810
    .end local v3           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$CommandPdu;
    :goto_3
    return-object v3

    .line 2767
    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$CommandPdu;
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;->encodedScAddress:[B

    goto :goto_0

    .line 2786
    .restart local v0       #bo:Ljava/io/ByteArrayOutputStream;
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 2788
    .local v1, daBytes:[B
    if-eqz v1, :cond_0

    .line 2790
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v7, v4, 0x2

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xf0

    const/16 v8, 0xf0

    if-ne v4, v8, :cond_3

    const/4 v4, 0x1

    :goto_4
    sub-int v4, v7, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2793
    array-length v4, v1

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_3
    move v4, v5

    .line 2790
    goto :goto_4

    .line 2800
    .end local v1           #daBytes:[B
    :cond_4
    array-length v2, p6

    .line 2801
    .local v2, len:I
    const/16 v4, 0x92

    if-le v2, v4, :cond_5

    move-object v3, v6

    .line 2803
    goto :goto_3

    .line 2805
    :cond_5
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2806
    invoke-virtual {v0, p6, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .locals 21
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"

    .prologue
    .line 2308
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2309
    :cond_0
    const/4 v14, 0x0

    .line 2411
    :goto_0
    return-object v14

    .line 2311
    :cond_1
    new-instance v14, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    invoke-direct {v14}, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;-><init>()V

    .line 2313
    .local v14, retPdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-nez p0, :cond_4

    .line 2314
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    .line 2320
    :goto_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v18, 0xb4

    move/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2323
    .local v3, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v11, 0x0

    .line 2324
    .local v11, mtiByte:B
    const/4 v7, 0x0

    .line 2325
    .local v7, btRp:B
    const/4 v9, 0x0

    .line 2326
    .local v9, btUdhi:B
    const/4 v8, 0x0

    .line 2327
    .local v8, btSri:B
    const/4 v4, 0x0

    .line 2328
    .local v4, btMms:B
    const/4 v5, 0x0

    .line 2331
    .local v5, btMti:B
    const/16 v18, 0x0

    move/from16 v0, v18

    int-to-byte v11, v0

    .line 2332
    invoke-virtual {v3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2337
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_5

    .line 2338
    :cond_2
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v13, v0, [B

    .line 2339
    .local v13, result:[B
    const/16 v18, 0x0

    const/16 v19, -0x7f

    aput-byte v19, v13, v18

    .line 2340
    move-object v12, v13

    .line 2346
    .end local v13           #result:[B
    .local v12, oaBytes:[B
    :goto_2
    if-eqz v12, :cond_3

    .line 2348
    array-length v0, v12

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    mul-int/lit8 v19, v18, 0x2

    array-length v0, v12

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-byte v18, v12, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    const/16 v20, 0xf0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    :goto_3
    sub-int v18, v19, v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2350
    const/16 v18, 0x0

    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v12, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2354
    :cond_3
    const/4 v6, 0x0

    .line 2355
    .local v6, btPid:B
    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2360
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v17

    .line 2362
    .local v17, userData:[B
    const/16 v18, 0x0

    aget-byte v18, v17, v18
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v19, 0xa0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    .line 2364
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2316
    .end local v3           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v4           #btMms:B
    .end local v5           #btMti:B
    .end local v6           #btPid:B
    .end local v7           #btRp:B
    .end local v8           #btSri:B
    .end local v9           #btUdhi:B
    .end local v11           #mtiByte:B
    .end local v12           #oaBytes:[B
    .end local v17           #userData:[B
    :cond_4
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    goto/16 :goto_1

    .line 2342
    .restart local v3       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #btMms:B
    .restart local v5       #btMti:B
    .restart local v7       #btRp:B
    .restart local v8       #btSri:B
    .restart local v9       #btUdhi:B
    .restart local v11       #mtiByte:B
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v12

    .restart local v12       #oaBytes:[B
    goto :goto_2

    .line 2348
    :cond_6
    const/16 v18, 0x0

    goto :goto_3

    .line 2368
    .restart local v6       #btPid:B
    .restart local v17       #userData:[B
    :cond_7
    const/16 v18, 0x0

    :try_start_1
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2371
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->packTimeStamp(Landroid/text/format/Time;)[B

    move-result-object v15

    .line 2372
    .local v15, tmbs:[B
    const/16 v18, 0x0

    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v15, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2377
    const/16 v18, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2410
    :goto_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 2378
    .end local v15           #tmbs:[B
    .end local v17           #userData:[B
    :catch_0
    move-exception v10

    .line 2384
    .local v10, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_2
    const-string v18, "utf-16be"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v17

    .line 2392
    .restart local v17       #userData:[B
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x8c

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    .line 2394
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2385
    .end local v17           #userData:[B
    :catch_1
    move-exception v16

    .line 2386
    .local v16, uex:Ljava/io/UnsupportedEncodingException;
    const-string v18, "GSM"

    const-string v19, "Implausible UnsupportedEncodingException "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2389
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2398
    .end local v16           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v17       #userData:[B
    :cond_8
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2401
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->packTimeStamp(Landroid/text/format/Time;)[B

    move-result-object v15

    .line 2402
    .restart local v15       #tmbs:[B
    const/16 v18, 0x0

    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v15, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2405
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2407
    const/16 v18, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;[BI)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .locals 21
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"
    .parameter "header"
    .parameter "encoding"

    .prologue
    .line 2429
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2430
    :cond_0
    const/4 v14, 0x0

    .line 2570
    :goto_0
    return-object v14

    .line 2432
    :cond_1
    new-instance v14, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    invoke-direct {v14}, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;-><init>()V

    .line 2434
    .local v14, retPdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-nez p0, :cond_5

    .line 2436
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    .line 2442
    :goto_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v18, 0xb4

    move/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2445
    .local v3, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v11, 0x0

    .line 2446
    .local v11, mtiByte:B
    const/4 v7, 0x0

    .line 2447
    .local v7, btRp:B
    if-nez p4, :cond_6

    const/16 v18, 0x0

    :goto_2
    shl-int/lit8 v18, v18, 0x6

    move/from16 v0, v18

    int-to-byte v9, v0

    .line 2448
    .local v9, btUdhi:B
    const/4 v8, 0x0

    .line 2449
    .local v8, btSri:B
    const/4 v4, 0x4

    .line 2450
    .local v4, btMms:B
    const/4 v5, 0x0

    .line 2453
    .local v5, btMti:B
    or-int v18, v7, v9

    or-int v18, v18, v8

    or-int v18, v18, v4

    or-int v18, v18, v5

    move/from16 v0, v18

    int-to-byte v11, v0

    .line 2454
    invoke-virtual {v3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2459
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_7

    .line 2460
    :cond_2
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v13, v0, [B

    .line 2461
    .local v13, result:[B
    const/16 v18, 0x0

    const/16 v19, -0x7f

    aput-byte v19, v13, v18

    .line 2462
    move-object v12, v13

    .line 2468
    .end local v13           #result:[B
    .local v12, oaBytes:[B
    :goto_3
    if-eqz v12, :cond_3

    .line 2470
    array-length v0, v12

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    mul-int/lit8 v19, v18, 0x2

    array-length v0, v12

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-byte v18, v12, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    const/16 v20, 0xf0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const/16 v18, 0x1

    :goto_4
    sub-int v18, v19, v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2472
    const/16 v18, 0x0

    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v12, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2476
    :cond_3
    const/4 v6, 0x0

    .line 2477
    .local v6, btPid:B
    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2481
    if-nez p5, :cond_4

    .line 2483
    const/16 p5, 0x1

    .line 2487
    :cond_4
    const/16 v18, 0x1

    move/from16 v0, p5

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 2488
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v17

    .line 2527
    .local v17, userData:[B
    :goto_5
    const/16 v18, 0x1

    move/from16 v0, p5

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 2528
    const/16 v18, 0x0

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v19, 0xa0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    .line 2530
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2438
    .end local v3           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v4           #btMms:B
    .end local v5           #btMti:B
    .end local v6           #btPid:B
    .end local v7           #btRp:B
    .end local v8           #btSri:B
    .end local v9           #btUdhi:B
    .end local v11           #mtiByte:B
    .end local v12           #oaBytes:[B
    .end local v17           #userData:[B
    :cond_5
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    goto/16 :goto_1

    .line 2447
    .restart local v3       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #btRp:B
    .restart local v11       #mtiByte:B
    :cond_6
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 2464
    .restart local v4       #btMms:B
    .restart local v5       #btMti:B
    .restart local v8       #btSri:B
    .restart local v9       #btUdhi:B
    :cond_7
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v12

    .restart local v12       #oaBytes:[B
    goto :goto_3

    .line 2470
    :cond_8
    const/16 v18, 0x0

    goto :goto_4

    .line 2491
    .restart local v6       #btPid:B
    :cond_9
    const/16 v18, 0x4

    move/from16 v0, p5

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 2493
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeKSC5601(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v17

    .restart local v17       #userData:[B
    goto :goto_5

    .line 2494
    .end local v17           #userData:[B
    :catch_0
    move-exception v16

    .line 2495
    .local v16, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v18, "GSM"

    const-string v19, "Implausible UnsupportedEncodingException "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2498
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2504
    .end local v16           #uex:Ljava/io/UnsupportedEncodingException;
    :cond_a
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v17

    .restart local v17       #userData:[B
    goto :goto_5

    .line 2505
    .end local v17           #userData:[B
    :catch_1
    move-exception v16

    .line 2506
    .restart local v16       #uex:Ljava/io/UnsupportedEncodingException;
    :try_start_4
    const-string v18, "GSM"

    const-string v19, "Implausible UnsupportedEncodingException "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2509
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2512
    .end local v16           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v10

    .line 2515
    .local v10, ex:Lcom/android/internal/telephony/EncodeException;
    const/16 p5, 0x3

    .line 2517
    :try_start_5
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v17

    .line 2518
    .restart local v17       #userData:[B
    const/16 p5, 0x3

    goto :goto_5

    .line 2519
    .end local v17           #userData:[B
    :catch_3
    move-exception v16

    .line 2520
    .restart local v16       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v18, "GSM"

    const-string v19, "Implausible UnsupportedEncodingException "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2523
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2540
    .end local v10           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v16           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v17       #userData:[B
    :cond_b
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2562
    :goto_6
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->packTimeStamp(Landroid/text/format/Time;)[B

    move-result-object v15

    .line 2563
    .local v15, tmbs:[B
    const/16 v18, 0x0

    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v15, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2567
    const/16 v18, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2569
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 2543
    .end local v15           #tmbs:[B
    :cond_c
    const/16 v18, 0x4

    move/from16 v0, p5

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 2544
    const/16 v18, 0x0

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v19, 0x8c

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    .line 2546
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2548
    :cond_d
    const/16 v18, 0x84

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_6

    .line 2552
    :cond_e
    const/16 v18, 0x0

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v19, 0x8c

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_f

    .line 2554
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2558
    :cond_f
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_6
.end method

.method public static getDeliverPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)[Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .locals 17
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"

    .prologue
    .line 2590
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->deNullify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2591
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->deNullify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2592
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->deNullify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2595
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v15

    .line 2597
    .local v15, smsManager:Landroid/telephony/SmsManager;
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v11

    .line 2599
    .local v11, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->createAConcatRefNum()I

    move-result v13

    .line 2600
    .local v13, refNumber:I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2601
    .local v10, msgCount:I
    const/4 v6, 0x0

    .line 2603
    .local v6, encoding:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_2

    .line 2604
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v8

    .line 2605
    .local v8, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v1, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v6, v1, :cond_1

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    if-ne v6, v1, :cond_1

    .line 2608
    :cond_0
    iget v6, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 2603
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2612
    .end local v8           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    new-array v12, v10, [Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    .line 2613
    .local v12, pduS:[Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    const/4 v1, 0x1

    if-le v10, v1, :cond_3

    .line 2614
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_4

    .line 2615
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 2616
    .local v7, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v13, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 2617
    add-int/lit8 v1, v9, 0x1

    iput v1, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 2618
    iput v10, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 2619
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 2620
    new-instance v14, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 2621
    .local v14, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v7, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 2623
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v14}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;[BI)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v1

    aput-object v1, v12, v9

    .line 2614
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2626
    .end local v7           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v14           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_3
    const/4 v1, 0x1

    if-ne v10, v1, :cond_5

    .line 2627
    const/16 v16, 0x0

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;[BI)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v1

    aput-object v1, v12, v16

    .line 2634
    .end local v12           #pduS:[Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    :cond_4
    :goto_2
    return-object v12

    .line 2630
    .restart local v12       #pduS:[Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    :cond_5
    const-string v1, "GSM"

    const-string v2, "parts count is 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    const/4 v12, 0x0

    goto :goto_2
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "originationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    .line 958
    const/4 v6, -0x1

    .line 959
    .local v6, encodingMethod:I
    const/4 v7, 0x0

    .local v7, language:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 960
    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZILjava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZILjava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 13
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "originationPort"
    .parameter "data"
    .parameter "statusReportRequested"
    .parameter "encodingMethod"
    .parameter "language"

    .prologue
    .line 986
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 987
    .local v4, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 988
    move/from16 v0, p3

    iput v0, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 991
    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 993
    new-instance v6, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 994
    .local v6, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v4, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 996
    const/4 v3, 0x0

    .line 997
    .local v3, ifSupportNationalTable:Z
    const/4 v2, 0x0

    .line 998
    .local v2, ifSupportLockingShiftTable:Z
    const/4 v9, 0x0

    .line 1000
    .local v9, useOnly7bit:Z
    const/4 v10, 0x2

    move/from16 v0, p6

    if-ne v0, v10, :cond_2

    .line 1001
    const/4 v3, 0x1

    .line 1009
    :cond_0
    :goto_0
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p7

    invoke-static {v10, v9, v3, v2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZZZLjava/lang/String;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v8

    .line 1012
    .local v8, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-eqz v8, :cond_1

    .line 1014
    iget v10, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iput v10, v6, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1015
    iget v10, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    iput v10, v6, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1023
    :cond_1
    invoke-static {v6}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v7

    .line 1025
    .local v7, smsHeaderData:[B
    move-object/from16 v0, p4

    array-length v10, v0

    array-length v11, v7

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x1

    const/16 v11, 0x8c

    if-le v10, v11, :cond_4

    .line 1026
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SMS data message may only contain "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v7

    rsub-int v12, v12, 0x8c

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const/4 v5, 0x0

    .line 1054
    :goto_1
    return-object v5

    .line 1002
    .end local v7           #smsHeaderData:[B
    .end local v8           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    const/4 v10, 0x3

    move/from16 v0, p6

    if-ne v0, v10, :cond_3

    .line 1003
    const/4 v3, 0x1

    .line 1004
    const/4 v2, 0x1

    goto :goto_0

    .line 1005
    :cond_3
    if-nez p6, :cond_0

    .line 1006
    const/4 v9, 0x1

    goto :goto_0

    .line 1031
    .restart local v7       #smsHeaderData:[B
    .restart local v8       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_4
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 1032
    .local v5, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v10, 0x41

    move/from16 v0, p5

    invoke-static {p0, p1, v10, v0, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 1039
    .local v1, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v10, 0x4

    invoke-virtual {v1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1044
    move-object/from16 v0, p4

    array-length v10, v0

    array-length v11, v7

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1047
    array-length v10, v7

    invoke-virtual {v1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1048
    const/4 v10, 0x0

    array-length v11, v7

    invoke-virtual {v1, v7, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1051
    const/4 v10, 0x0

    move-object/from16 v0, p4

    array-length v11, v0

    move-object/from16 v0, p4

    invoke-virtual {v1, v0, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1053
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    iput-object v10, v5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 6
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    .line 935
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 798
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    const/4 v5, 0x0

    .line 364
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"

    .prologue
    .line 506
    const/4 v6, -0x1

    .line 507
    .local v6, encodingMethod:I
    const/4 v7, 0x0

    .local v7, language:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 508
    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIILjava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    .line 388
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 389
    :cond_0
    const/4 v7, 0x0

    .line 486
    :goto_0
    return-object v7

    .line 392
    :cond_1
    if-nez p5, :cond_4

    .line 394
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v9

    .line 395
    .local v9, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v0, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 p5, v0

    .line 396
    iget v0, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move/from16 p6, v0

    .line 397
    iget v0, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move/from16 p7, v0

    .line 399
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_4

    if-nez p6, :cond_2

    if-eqz p7, :cond_4

    .line 400
    :cond_2
    if-eqz p4, :cond_5

    .line 401
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    .line 402
    .local v8, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v0, p6

    if-ne v12, v0, :cond_3

    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move/from16 v0, p7

    if-eq v12, v0, :cond_4

    .line 404
    :cond_3
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updating language table in SMS header: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 408
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 409
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    .line 420
    .end local v8           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v9           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_4
    :goto_1
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 422
    .local v7, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_6

    const/16 v12, 0x40

    :goto_2
    or-int/lit8 v12, v12, 0x1

    int-to-byte v6, v12

    .line 423
    .local v6, mtiByte:B
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {p0, v0, v6, v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 430
    .local v4, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_7

    .line 431
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 457
    .local v11, userData:[B
    :goto_3
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_9

    .line 458
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa0

    if-le v12, v13, :cond_8

    .line 460
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " septets)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 412
    .end local v4           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v6           #mtiByte:B
    .end local v7           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11           #userData:[B
    .restart local v9       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_5
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 413
    .restart local v8       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 414
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 415
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    goto :goto_1

    .line 422
    .end local v8           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v9           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local v7       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 435
    .restart local v4       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #mtiByte:B
    :cond_7
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .restart local v11       #userData:[B
    goto :goto_3

    .line 436
    .end local v11           #userData:[B
    :catch_0
    move-exception v10

    .line 437
    .local v10, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v12, "GSM"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 440
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 443
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    .line 447
    .local v5, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v11

    .line 448
    .restart local v11       #userData:[B
    const/16 p5, 0x3

    goto :goto_3

    .line 449
    .end local v11           #userData:[B
    :catch_2
    move-exception v10

    .line 450
    .restart local v10       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v12, "GSM"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 471
    .end local v5           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v11       #userData:[B
    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 484
    :goto_4
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 485
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 473
    :cond_9
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x8c

    if-le v12, v13, :cond_a

    .line 475
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 480
    :cond_a
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIILjava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 21
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"
    .parameter "encodingMethod"
    .parameter "language"

    .prologue
    .line 532
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 533
    :cond_0
    const/4 v7, 0x0

    .line 676
    :goto_0
    return-object v7

    .line 536
    :cond_1
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 538
    .local v7, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_4

    const/16 v5, 0x40

    :goto_1
    or-int/lit8 v5, v5, 0x1

    int-to-byte v13, v5

    .line 540
    .local v13, mtiByte:B
    const/4 v15, 0x0

    .line 541
    .local v15, tpVpFormat:I
    const/16 v16, 0x0

    .line 543
    .local v16, tp_vp:[B
    :try_start_0
    const-string v5, "ro.gsm.sms.tp-vpf"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 545
    const/4 v5, 0x2

    if-ne v15, v5, :cond_2

    .line 546
    invoke-static {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getValidityPeriod(I)[B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 547
    if-eqz v16, :cond_2

    .line 548
    shl-int/lit8 v5, v15, 0x3

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    or-int/2addr v5, v13

    int-to-byte v13, v5

    .line 556
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v13, v2, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 562
    .local v4, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v14, 0x0

    .line 563
    .local v14, smsMode:I
    const/4 v8, 0x0

    .line 564
    .local v8, fo:I
    const/4 v9, 0x0

    .line 565
    .local v9, vp:I
    const/4 v10, 0x0

    .line 566
    .local v10, dcs:I
    const-string v5, "gsm.smsmode"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 567
    const-string v5, "gsm.csmp.fo"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 568
    const-string v5, "gsm.csmp.vp"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 569
    const-string v5, "gsm.csmp.dcs"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 570
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SmsMessage.getSubmitPdu:  fo = "

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SmsMessage.getSubmitPdu:  vp = "

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SmsMessage.getSubmitPdu:  dcs = "

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v5, 0x1

    if-ne v14, v5, :cond_5

    if-nez v8, :cond_3

    if-nez v9, :cond_3

    if-eqz v10, :cond_5

    .line 576
    :cond_3
    const-string v5, "GSM"

    const-string v6, "SmsMessage.getSubmitPdu - Calling getSubmitPduCsmp()."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    .line 577
    invoke-static/range {v4 .. v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduCsmp(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;III)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v7

    goto/16 :goto_0

    .line 538
    .end local v4           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v8           #fo:I
    .end local v9           #vp:I
    .end local v10           #dcs:I
    .end local v13           #mtiByte:B
    .end local v14           #smsMode:I
    .end local v15           #tpVpFormat:I
    .end local v16           #tp_vp:[B
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 551
    .restart local v13       #mtiByte:B
    .restart local v15       #tpVpFormat:I
    .restart local v16       #tp_vp:[B
    :catch_0
    move-exception v11

    .line 552
    .local v11, e:Ljava/lang/NumberFormatException;
    const-string v5, "GSM"

    const-string v6, "SmsMessage.getSubmitPdu: Error setting sms validity period"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 579
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #fo:I
    .restart local v9       #vp:I
    .restart local v10       #dcs:I
    .restart local v14       #smsMode:I
    :cond_5
    const-string v5, "GSM"

    const-string v6, "SmsMessage.getSubmitPdu: create PDU without CSMP settings fo, vp, dcs"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    if-nez p5, :cond_6

    .line 588
    const/16 p5, 0x1

    .line 591
    :cond_6
    const/4 v5, 0x1

    move/from16 v0, p5

    if-ne v0, v5, :cond_7

    .line 593
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BILjava/lang/String;)[B
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v19

    .line 633
    .local v19, userData:[B
    :goto_3
    const/4 v5, 0x1

    move/from16 v0, p5

    if-ne v0, v5, :cond_b

    .line 634
    const/4 v5, 0x0

    aget-byte v5, v19, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xa0

    if-le v5, v6, :cond_9

    .line 636
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 596
    .end local v19           #userData:[B
    :cond_7
    const/4 v5, 0x4

    move/from16 v0, p5

    if-ne v0, v5, :cond_8

    .line 598
    :try_start_2
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeKSC5601(Ljava/lang/String;[B)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v19

    .restart local v19       #userData:[B
    goto :goto_3

    .line 599
    .end local v19           #userData:[B
    :catch_1
    move-exception v18

    .line 600
    .local v18, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_3
    const-string v5, "GSM"

    const-string v6, "Implausible UnsupportedEncodingException "

    move-object/from16 v0, v18

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 603
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 609
    .end local v18           #uex:Ljava/io/UnsupportedEncodingException;
    :cond_8
    :try_start_4
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v19

    .restart local v19       #userData:[B
    goto :goto_3

    .line 610
    .end local v19           #userData:[B
    :catch_2
    move-exception v18

    .line 611
    .restart local v18       #uex:Ljava/io/UnsupportedEncodingException;
    :try_start_5
    const-string v5, "GSM"

    const-string v6, "Implausible UnsupportedEncodingException "

    move-object/from16 v0, v18

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 614
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 617
    .end local v18           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v12

    .line 621
    .local v12, ex:Lcom/android/internal/telephony/EncodeException;
    const/16 p5, 0x3

    .line 623
    :try_start_6
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v19

    .line 624
    .restart local v19       #userData:[B
    const/16 p5, 0x3

    goto :goto_3

    .line 625
    .end local v19           #userData:[B
    :catch_4
    move-exception v18

    .line 626
    .restart local v18       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v5, "GSM"

    const-string v6, "Implausible UnsupportedEncodingException "

    move-object/from16 v0, v18

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 646
    .end local v12           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v18           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v19       #userData:[B
    :cond_9
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 669
    :goto_4
    shr-int/lit8 v5, v13, 0x3

    and-int/lit8 v17, v5, 0x3

    .line 670
    .local v17, tp_vpf:I
    const/4 v5, 0x2

    move/from16 v0, v17

    if-ne v0, v5, :cond_a

    if-eqz v16, :cond_a

    .line 671
    const/4 v5, 0x0

    move-object/from16 v0, v16

    array-length v6, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 674
    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, v19

    array-length v6, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 675
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 649
    .end local v17           #tp_vpf:I
    :cond_b
    const/4 v5, 0x4

    move/from16 v0, p5

    if-ne v0, v5, :cond_d

    .line 650
    const/4 v5, 0x0

    aget-byte v5, v19, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8c

    if-le v5, v6, :cond_c

    .line 652
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 654
    :cond_c
    const/16 v5, 0x84

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 658
    :cond_d
    const/4 v5, 0x0

    aget-byte v5, v19, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8c

    if-le v5, v6, :cond_e

    .line 660
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 664
    :cond_e
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4
.end method

.method private static getSubmitPduCsmp(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;III)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 7
    .parameter "bo"
    .parameter "message"
    .parameter "header"
    .parameter "ret"
    .parameter "fo"
    .parameter "vp"
    .parameter "dcs"

    .prologue
    const/4 v3, 0x0

    .line 2842
    and-int/lit8 v4, p6, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    .line 2846
    :try_start_0
    const-string v4, "GSM"

    const-string v5, "getSubmitPduCsmp: try GsmAlphabet.stringToGsm7BitPackedWithHeader"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    invoke-static {p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 2848
    .local v1, userData:[B
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xa0

    if-le v4, v5, :cond_0

    move-object p3, v3

    .line 2882
    .end local v1           #userData:[B
    .end local p3
    :goto_0
    return-object p3

    .line 2855
    .restart local v1       #userData:[B
    .restart local p3
    :cond_0
    const-string v4, "GSM"

    const-string v5, "getSubmitPduCsmp: write dcs = 0x00"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2859
    and-int/lit8 v4, p4, 0x18

    shr-int/lit8 v2, v4, 0x3

    .line 2860
    .local v2, vp_format:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 2861
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSubmitPduCsmp: write vp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    invoke-virtual {p0, p5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2864
    :cond_1
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {p0, v1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2881
    .end local v1           #userData:[B
    .end local v2           #vp_format:I
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p3, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto :goto_0

    .line 2866
    :catch_0
    move-exception v0

    .line 2869
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    invoke-static {p1, p2, p0, p4, p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->createUCS2MessageCsmp(Ljava/lang/String;[BLjava/io/ByteArrayOutputStream;II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2870
    const-string v4, "GSM"

    const-string v5, "getSubmitPduCsmp: createUCS2MessageCsmp failed - 1 "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v3

    .line 2871
    goto :goto_0

    .line 2876
    .end local v0           #ex:Lcom/android/internal/telephony/EncodeException;
    :cond_3
    invoke-static {p1, p2, p0, p4, p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->createUCS2MessageCsmp(Ljava/lang/String;[BLjava/io/ByteArrayOutputStream;II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2877
    const-string v4, "GSM"

    const-string v5, "getSubmitPduCsmp: createUCS2MessageCsmp failed - 2"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v3

    .line 2878
    goto :goto_0
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 9
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1072
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0xb4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1076
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_2

    .line 1077
    const/4 v4, 0x0

    iput-object v4, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 1084
    :goto_0
    if-eqz p3, :cond_0

    .line 1086
    or-int/lit8 v4, p2, 0x20

    int-to-byte p2, v4

    .line 1089
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1092
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1097
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1104
    .local v1, daBytes:[B
    if-eqz v1, :cond_1

    .line 1105
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v7, v4, 0x2

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xf0

    const/16 v8, 0xf0

    if-ne v4, v8, :cond_3

    move v4, v5

    :goto_1
    sub-int v4, v7, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1109
    array-length v4, v1

    invoke-virtual {v0, v1, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1117
    :cond_1
    const/4 v3, 0x0

    .line 1118
    .local v3, smsMode:I
    const/4 v2, 0x0

    .line 1119
    .local v2, pid:I
    const-string v4, "gsm.smsmode"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1120
    const-string v4, "gsm.csmp.pid"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1121
    const-string v4, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmsMessage.getSubmitPduHead:  pid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    if-ne v3, v5, :cond_4

    if-eqz v2, :cond_4

    .end local v2           #pid:I
    :goto_2
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1126
    return-object v0

    .line 1079
    .end local v1           #daBytes:[B
    .end local v3           #smsMode:I
    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_3
    move v4, v6

    .line 1105
    goto :goto_1

    .restart local v2       #pid:I
    .restart local v3       #smsMode:I
    :cond_4
    move v2, v6

    .line 1122
    goto :goto_2
.end method

.method public static getSubmitPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 17
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "messageOrig"
    .parameter "statusReportRequested"

    .prologue
    .line 824
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->deNullify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 825
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->deNullify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 826
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->deNullify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 829
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v15

    .line 831
    .local v15, smsManager:Landroid/telephony/SmsManager;
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v11

    .line 833
    .local v11, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->createAConcatRefNum()I

    move-result v13

    .line 834
    .local v13, refNumber:I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 835
    .local v10, msgCount:I
    const/4 v6, 0x0

    .line 837
    .local v6, encoding:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_2

    .line 838
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v8

    .line 839
    .local v8, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v1, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v6, v1, :cond_1

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    if-ne v6, v1, :cond_1

    .line 842
    :cond_0
    iget v6, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 837
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 846
    .end local v8           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    new-array v12, v10, [Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    .line 847
    .local v12, pduS:[Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v1, 0x1

    if-le v10, v1, :cond_3

    .line 848
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_4

    .line 849
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 850
    .local v7, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v13, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 851
    add-int/lit8 v1, v9, 0x1

    iput v1, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 852
    iput v10, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 853
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 854
    new-instance v14, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 855
    .local v14, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v7, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 857
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v14}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    aput-object v1, v12, v9

    .line 848
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 861
    .end local v7           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v14           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_3
    const/4 v1, 0x1

    if-ne v10, v1, :cond_5

    .line 862
    const/16 v16, 0x0

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    aput-object v1, v12, v16

    .line 870
    .end local v12           #pduS:[Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_4
    :goto_2
    return-object v12

    .line 866
    .restart local v12       #pduS:[Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_5
    const-string v1, "GSM"

    const-string v2, "parts count is 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v12, 0x0

    goto :goto_2
.end method

.method public static getTLDeliverPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[[B
    .locals 7
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"

    .prologue
    .line 2654
    :try_start_0
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 2655
    .local v4, t:Landroid/text/format/Time;
    invoke-virtual {v4, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 2657
    invoke-static {p0, p1, p2, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)[Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v2

    .line 2658
    .local v2, pduS:[Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-nez v2, :cond_0

    .line 2659
    const/4 v5, 0x0

    check-cast v5, [[B

    .line 2666
    :goto_0
    return-object v5

    .line 2661
    :cond_0
    array-length v1, v2

    .line 2662
    .local v1, pduCount:I
    new-array v3, v1, [[B

    .line 2663
    .local v3, ret:[[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 2664
    aget-object v5, v2, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->toByteArray()[B

    move-result-object v5

    aput-object v5, v3, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2663
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 2666
    goto :goto_0

    .line 2667
    .end local v0           #i:I
    .end local v1           #pduCount:I
    .end local v2           #pduS:[Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .end local v3           #ret:[[B
    .end local v4           #t:Landroid/text/format/Time;
    :catch_0
    move-exception v4

    .line 2668
    .local v4, t:Ljava/lang/RuntimeException;
    const-string v5, "GSM"

    const-string v6, "getTLDeliverPdus Exception is:"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2669
    throw v4
.end method

.method public static getTLSubmitPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[[B
    .locals 7
    .parameter "scAddress"
    .parameter "destAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 899
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v2

    .line 900
    .local v2, pduS:[Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-nez v2, :cond_0

    .line 901
    const/4 v5, 0x0

    check-cast v5, [[B

    .line 908
    :goto_0
    return-object v5

    .line 903
    :cond_0
    array-length v1, v2

    .line 904
    .local v1, pduCount:I
    new-array v3, v1, [[B

    .line 905
    .local v3, ret:[[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 906
    aget-object v5, v2, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->toByteArray()[B

    move-result-object v5

    aput-object v5, v3, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 908
    goto :goto_0

    .line 909
    .end local v0           #i:I
    .end local v1           #pduCount:I
    .end local v2           #pduS:[Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v3           #ret:[[B
    :catch_0
    move-exception v4

    .line 910
    .local v4, t:Ljava/lang/RuntimeException;
    const-string v5, "GSM"

    const-string v6, "getTLSubmitPdus Exception is:"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 911
    throw v4
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .parameter "pdu"

    .prologue
    .line 346
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 347
    .local v0, len:I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 349
    .local v1, smscLen:I
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private static getValidityPeriod(I)[B
    .locals 9
    .parameter "validityFormat"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 690
    const/4 v2, 0x0

    .line 691
    .local v2, result:[B
    const/4 v3, 0x0

    .line 693
    .local v3, tpVpValue:I
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmsMessage.getSubmitPdu: sms validity period format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    if-nez p0, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-object v4

    .line 700
    :cond_1
    :try_start_0
    const-string v5, "ro.gsm.sms.tp-vp"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 706
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmsMessage.getSubmitPdu: sms validity period value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v5, 0x2

    if-ne p0, v5, :cond_2

    .line 708
    new-array v2, v8, [B

    .line 710
    const/4 v4, 0x0

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    :try_start_1
    aput-byte v5, v2, v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v4, v2

    .line 715
    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "GSM"

    const-string v6, "SmsMessage.getSubmitPdu: Error setting sms validity period value"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 711
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 712
    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v4, "GSM"

    const-string v5, "getValidityPeriod: Error Reading Encoded Validity Period"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/4 v2, 0x0

    goto :goto_1

    .line 718
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :cond_2
    if-eq p0, v8, :cond_0

    const/4 v5, 0x3

    if-eq p0, v5, :cond_0

    .line 723
    const-string v5, "GSM"

    const-string v6, "getValidityPeriod: Invalid Format"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "line"

    .prologue
    .line 281
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 282
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "lines"

    .prologue
    .line 259
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 260
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static packTimeStamp(Landroid/text/format/Time;)[B
    .locals 12
    .parameter "timeStamp"

    .prologue
    const/4 v11, 0x6

    const-wide/16 v9, 0x384

    const-wide/16 v7, 0xa

    .line 2240
    const/4 v0, 0x0

    .line 2241
    .local v0, high4Bits:B
    const/4 v1, 0x0

    .line 2242
    .local v1, low4Bits:B
    const/4 v3, 0x7

    new-array v2, v3, [B

    .line 2244
    .local v2, ret:[B
    if-nez p0, :cond_0

    .line 2246
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 2247
    .restart local p0
    invoke-virtual {p0}, Landroid/text/format/Time;->setToNow()V

    .line 2250
    :cond_0
    iget v3, p0, Landroid/text/format/Time;->year:I

    const/16 v4, 0x7d0

    if-lt v3, v4, :cond_1

    .line 2251
    iget v3, p0, Landroid/text/format/Time;->year:I

    add-int/lit16 v3, v3, -0x7d0

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    .line 2252
    iget v3, p0, Landroid/text/format/Time;->year:I

    add-int/lit16 v3, v3, -0x7d0

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    .line 2258
    :goto_0
    const/4 v3, 0x0

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 2260
    iget v3, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    .line 2261
    iget v3, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    .line 2262
    const/4 v3, 0x1

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 2264
    iget v3, p0, Landroid/text/format/Time;->monthDay:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    .line 2265
    iget v3, p0, Landroid/text/format/Time;->monthDay:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    .line 2266
    const/4 v3, 0x2

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 2268
    iget v3, p0, Landroid/text/format/Time;->hour:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    .line 2269
    iget v3, p0, Landroid/text/format/Time;->hour:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    .line 2270
    const/4 v3, 0x3

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 2272
    iget v3, p0, Landroid/text/format/Time;->minute:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    .line 2273
    iget v3, p0, Landroid/text/format/Time;->minute:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    .line 2274
    const/4 v3, 0x4

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 2276
    iget v3, p0, Landroid/text/format/Time;->second:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    .line 2277
    iget v3, p0, Landroid/text/format/Time;->second:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    .line 2278
    const/4 v3, 0x5

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 2280
    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 2281
    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    neg-long v3, v3

    div-long/2addr v3, v9

    rem-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v0, v3

    .line 2282
    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    neg-long v3, v3

    div-long/2addr v3, v9

    div-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v1, v3

    .line 2283
    shl-int/lit8 v3, v0, 0x4

    or-int/2addr v3, v1

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v11

    .line 2290
    :goto_1
    return-object v2

    .line 2254
    :cond_1
    iget v3, p0, Landroid/text/format/Time;->year:I

    add-int/lit16 v3, v3, -0x76c

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    .line 2255
    iget v3, p0, Landroid/text/format/Time;->year:I

    add-int/lit16 v3, v3, -0x76c

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    goto/16 :goto_0

    .line 2285
    :cond_2
    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    div-long/2addr v3, v9

    rem-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v0, v3

    .line 2286
    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    div-long/2addr v3, v9

    div-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v1, v3

    .line 2287
    shl-int/lit8 v3, v0, 0x4

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v11

    goto :goto_1
.end method

.method private parsePdu([B)V
    .locals 4
    .parameter "pdu"

    .prologue
    .line 1765
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 1769
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 1771
    .local v1, p:Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    .line 1773
    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1781
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1783
    .local v0, firstByte:I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    .line 1784
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    packed-switch v2, :pswitch_data_0

    .line 1804
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1790
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1806
    :goto_0
    return-void

    .line 1796
    :pswitch_1
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1800
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1784
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1860
    iput p2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->firstOctet:I

    .line 1864
    and-int/lit16 v1, p2, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 1866
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1868
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_0

    .line 1875
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1879
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1886
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 1890
    and-int/lit8 v1, p2, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_2

    move v0, v2

    .line 1892
    .local v0, hasUserDataHeader:Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1893
    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_1
    move v1, v3

    .line 1864
    goto :goto_0

    :cond_2
    move v0, v3

    .line 1890
    goto :goto_1
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 8
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1815
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 1818
    and-int/lit8 v3, p2, 0x20

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->forSubmit:Z

    .line 1820
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 1822
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1824
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 1826
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dischargeTimeMillis:J

    .line 1828
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    .line 1831
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1833
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1834
    .local v0, extraParams:I
    move v2, v0

    .line 1835
    .local v2, moreExtraParams:I
    :goto_1
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    .line 1839
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_1

    .end local v0           #extraParams:I
    .end local v2           #moreExtraParams:I
    :cond_0
    move v3, v5

    .line 1818
    goto :goto_0

    .line 1842
    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_1
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    .line 1843
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1846
    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    .line 1847
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1850
    :cond_3
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_4

    .line 1851
    and-int/lit8 v3, p2, 0x40

    const/16 v6, 0x40

    if-ne v3, v6, :cond_5

    move v1, v4

    .line 1852
    .local v1, hasUserDataHeader:Z
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1855
    .end local v0           #extraParams:I
    .end local v1           #hasUserDataHeader:Z
    .end local v2           #moreExtraParams:I
    :cond_4
    return-void

    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_5
    move v1, v5

    .line 1851
    goto :goto_2
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 12
    .parameter "p"
    .parameter "hasUserDataHeader"

    .prologue
    .line 1903
    const/4 v3, 0x0

    .line 1904
    .local v3, hasMessageClass:Z
    const/4 v8, 0x0

    .line 1906
    .local v8, userDataCompressed:Z
    const/4 v2, 0x0

    .line 1909
    .local v2, encodingType:I
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0x80

    if-nez v9, :cond_6

    .line 1911
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x40

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1912
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_2

    const/4 v8, 0x1

    .line 1913
    :goto_1
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_3

    const/4 v3, 0x1

    .line 1915
    :goto_2
    if-eqz v8, :cond_4

    .line 1916
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    :goto_3
    const/4 v9, 0x1

    if-ne v2, v9, :cond_10

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {p1, p2, v9}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v1

    .line 2021
    .local v1, count:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    .line 2022
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 2030
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiUdh:Z

    .line 2031
    const/16 v9, 0xff

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiUdhVmCount:I

    .line 2032
    iget-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v9, :cond_16

    .line 2033
    iget-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v6, v9, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    .line 2034
    .local v6, miscEltList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsHeader$MiscElt;>;"
    if-eqz v6, :cond_13

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_13

    .line 2035
    const/4 v4, 0x0

    .line 2036
    .local v4, i:I
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_14

    .line 2037
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 2038
    .local v5, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iget v9, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 2039
    iget-object v9, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    if-eqz v9, :cond_0

    .line 2040
    iget-object v9, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    and-int/lit8 v9, v9, 0x3

    if-nez v9, :cond_0

    .line 2041
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiUdh:Z

    .line 2042
    iget-object v9, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    and-int/lit8 v9, v9, -0x80

    if-nez v9, :cond_11

    const/4 v9, 0x1

    :goto_6
    iput-boolean v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    .line 2044
    iget-object v9, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiUdhVmCount:I

    .line 2045
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiUdhVmCount:I

    if-lez v9, :cond_12

    .line 2046
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    .line 2050
    :goto_7
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SmsMessage.parseUserData - UDHI bit is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SmsMessage.parseUserData - VM count is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiUdhVmCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1911
    .end local v1           #count:I
    .end local v4           #i:I
    .end local v5           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v6           #miscEltList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsHeader$MiscElt;>;"
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1912
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1913
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1919
    :cond_4
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    shr-int/lit8 v9, v9, 0x2

    and-int/lit8 v9, v9, 0x3

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_3

    .line 1921
    :pswitch_0
    const/4 v2, 0x1

    .line 1922
    goto/16 :goto_3

    .line 1925
    :pswitch_1
    const/4 v2, 0x3

    .line 1926
    goto/16 :goto_3

    .line 1931
    :pswitch_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 1932
    .local v7, r:Landroid/content/res/Resources;
    const v9, 0x111006f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1939
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1 - SMS data coding scheme : KSC5601  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    const/4 v2, 0x4

    .line 1942
    goto/16 :goto_3

    .line 1944
    :cond_5
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    const/4 v2, 0x2

    goto/16 :goto_3

    .line 1952
    .end local v7           #r:Landroid/content/res/Resources;
    :cond_6
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xf0

    if-ne v9, v10, :cond_8

    .line 1953
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1954
    const/4 v3, 0x1

    .line 1955
    const/4 v8, 0x0

    .line 1957
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_7

    .line 1959
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1962
    :cond_7
    const/4 v2, 0x2

    goto/16 :goto_3

    .line 1964
    :cond_8
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xc0

    if-eq v9, v10, :cond_9

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xd0

    if-eq v9, v10, :cond_9

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xe0

    if-ne v9, v10, :cond_e

    .line 1973
    :cond_9
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xe0

    if-ne v9, v10, :cond_a

    .line 1974
    const/4 v2, 0x3

    .line 1979
    :goto_8
    const/4 v8, 0x0

    .line 1980
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_b

    const/4 v0, 0x1

    .line 1984
    .local v0, active:Z
    :goto_9
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x3

    if-nez v9, :cond_d

    .line 1985
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 1986
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    .line 1987
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xc0

    if-ne v9, v10, :cond_c

    const/4 v9, 0x1

    :goto_a
    iput-boolean v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    goto/16 :goto_3

    .line 1976
    .end local v0           #active:Z
    :cond_a
    const/4 v2, 0x1

    goto :goto_8

    .line 1980
    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    .line 1987
    .restart local v0       #active:Z
    :cond_c
    const/4 v9, 0x0

    goto :goto_a

    .line 1989
    :cond_d
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 1991
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MWI for fax, email, or other "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1994
    .end local v0           #active:Z
    :cond_e
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xc0

    const/16 v10, 0x80

    if-ne v9, v10, :cond_f

    .line 1999
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    shr-int/lit8 v9, v9, 0x2

    and-int/lit8 v9, v9, 0x3

    packed-switch v9, :pswitch_data_1

    goto/16 :goto_3

    .line 2001
    :pswitch_3
    const/4 v2, 0x1

    .line 2002
    goto/16 :goto_3

    .line 2005
    :pswitch_4
    const/4 v2, 0x4

    .line 2006
    goto/16 :goto_3

    .line 2009
    :pswitch_5
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "5 - Unsupported SMS data coding scheme"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2014
    :cond_f
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2019
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 2042
    .restart local v1       #count:I
    .restart local v4       #i:I
    .restart local v5       #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .restart local v6       #miscEltList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsHeader$MiscElt;>;"
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 2048
    :cond_12
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    goto/16 :goto_7

    .line 2059
    .end local v4           #i:I
    .end local v5           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_13
    const-string v9, "GSM"

    const-string v10, "SmsMessage.parseUserData - miscEltList is either null or empty."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    .end local v6           #miscEltList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsHeader$MiscElt;>;"
    :cond_14
    :goto_b
    packed-switch v2, :pswitch_data_2

    .line 2103
    :goto_c
    iget-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    if-eqz v9, :cond_15

    .line 2104
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    .line 2107
    :cond_15
    if-nez v3, :cond_1a

    .line 2108
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 2125
    :goto_d
    return-void

    .line 2063
    :cond_16
    const-string v9, "GSM"

    const-string v10, "SmsMessage.parseUserData - userDataHeader is null."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2071
    :pswitch_6
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto :goto_c

    .line 2076
    :pswitch_7
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 2077
    .restart local v7       #r:Landroid/content/res/Resources;
    const v9, 0x1110070

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 2078
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8bit(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto :goto_c

    .line 2081
    :cond_17
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto :goto_c

    .line 2087
    .end local v7           #r:Landroid/content/res/Resources;
    :pswitch_8
    if-eqz p2, :cond_18

    iget-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v9, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v10, v9

    :goto_e
    if-eqz p2, :cond_19

    iget-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v9, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :goto_f
    invoke-virtual {p1, v1, v10, v9}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto :goto_c

    :cond_18
    const/4 v9, 0x0

    move v10, v9

    goto :goto_e

    :cond_19
    const/4 v9, 0x0

    goto :goto_f

    .line 2093
    :pswitch_9
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto :goto_c

    .line 2097
    :pswitch_a
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto :goto_c

    .line 2110
    :cond_1a
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x3

    packed-switch v9, :pswitch_data_3

    goto :goto_d

    .line 2112
    :pswitch_b
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_d

    .line 2115
    :pswitch_c
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_d

    .line 2118
    :pswitch_d
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_d

    .line 2121
    :pswitch_e
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_d

    .line 1919
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1999
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 2069
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 2110
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public getCallbackNumberAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2208
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCodingScheme()I
    .locals 1

    .prologue
    .line 1630
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    return v0
.end method

.method public getFirstOctet()I
    .locals 1

    .prologue
    .line 2939
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->firstOctet:I

    return v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 2166
    const/4 v0, 0x0

    return v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 2186
    const/4 v0, 0x0

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 2197
    const/4 v0, 0x0

    return v0
.end method

.method public getNumOfVoicemails()I
    .locals 1

    .prologue
    .line 1733
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiUdhVmCount:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 2156
    const/4 v0, 0x0

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 1620
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    return v0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2819
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    if-eqz v0, :cond_0

    .line 2822
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    .line 2826
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 2175
    const/4 v0, 0x0

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1741
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    return v0
.end method

.method public getValidityPeriodFormat()I
    .locals 1

    .prologue
    .line 2729
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpTimeFormat:I

    return v0
.end method

.method public getValidityPeriodMillis()J
    .locals 2

    .prologue
    .line 2738
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpTimeMillis:J

    return-wide v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 3

    .prologue
    .line 1653
    const/4 v0, 0x0

    .line 1655
    .local v0, isMwiClear:Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiUdh:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-nez v1, :cond_1

    .line 1656
    const-string v1, "GSM"

    const-string v2, "SmsMessage.isMWIClearMessage - UDH Check."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const/4 v0, 0x1

    .line 1667
    :cond_0
    :goto_0
    return v0

    .line 1658
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1660
    const-string v1, "GSM"

    const-string v2, "SmsMessage.isMWIClearMessage - CPHS Check."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    const/4 v0, 0x1

    goto :goto_0

    .line 1662
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-nez v1, :cond_0

    .line 1663
    const-string v1, "GSM"

    const-string v2, "SmsMessage.isMWIClearMessage - DCS Check."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMWISetMessage()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1676
    const/4 v0, 0x0

    .line 1678
    .local v0, isMwiSet:Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiUdh:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-ne v1, v2, :cond_1

    .line 1679
    const-string v1, "GSM"

    const-string v2, "SmsMessage.isMWISetMessage - UDH Check."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    const/4 v0, 0x1

    .line 1692
    :cond_0
    :goto_0
    return v0

    .line 1681
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiUdh:Z

    if-eqz v1, :cond_2

    .line 1682
    const-string v1, "GSM"

    const-string v2, "SmsMessage.isMWISetMessage - UDH Check. mwiSense is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1683
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1685
    const-string v1, "GSM"

    const-string v2, "SmsMessage.isMWISetMessage - CPHS Check."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    const/4 v0, 0x1

    goto :goto_0

    .line 1687
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-ne v1, v2, :cond_0

    .line 1688
    const-string v1, "GSM"

    const-string v2, "SmsMessage.isMWISetMessage - DCS Check."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMwiDontStore()Z
    .locals 3

    .prologue
    .line 1701
    const/4 v0, 0x0

    .line 1703
    .local v0, dontStore:Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiUdh:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    if-eqz v1, :cond_1

    .line 1704
    const-string v1, "GSM"

    const-string v2, "SmsMessage.isMwiDontStore - UDH Check."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const/4 v0, 0x1

    .line 1722
    :cond_0
    :goto_0
    return v0

    .line 1706
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiUdh:Z

    if-eqz v1, :cond_2

    .line 1707
    const-string v1, "GSM"

    const-string v2, "SmsMessage.isMwiDontStore - UDH Check. mwiDontStore is false."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1708
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1709
    const-string v1, "GSM"

    const-string v2, "SmsMessage.isMwiDontStore - CPHS Check."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    const-string v1, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1716
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1717
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    if-eqz v1, :cond_0

    .line 1718
    const-string v1, "GSM"

    const-string v2, "SmsMessage.isMwiDontStore - DCS Check."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 1636
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 1753
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 1747
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    .prologue
    .line 245
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUsimDataDownload()Z
    .locals 2

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2685
    and-int/lit16 v1, p2, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 2686
    shr-int/lit8 v1, p2, 0x3

    and-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpTimeFormat:I

    .line 2688
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 2690
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 2692
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    if-eqz v1, :cond_0

    .line 2699
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 2703
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 2710
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpTimeFormat:I

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getValidityPeriodMillis(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpTimeMillis:J

    .line 2713
    and-int/lit8 v1, p2, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_2

    move v0, v2

    .line 2715
    .local v0, hasUserDataHeader:Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 2716
    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_1
    move v1, v3

    .line 2685
    goto :goto_0

    :cond_2
    move v0, v3

    .line 2713
    goto :goto_1
.end method

.method protected setEmpty()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Lcom/android/internal/telephony/SmsMessageBase;->setEmpty()V

    .line 235
    const-string v0, "GSM"

    const-string v1, "nothing to do for gsm message in addition to the memebers of base class"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "GSM"

    const-string v1, "SMS recipient address is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method
