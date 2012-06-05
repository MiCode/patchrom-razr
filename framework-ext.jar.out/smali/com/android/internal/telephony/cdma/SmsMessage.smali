.class public Lcom/android/internal/telephony/cdma/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;,
        Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;,
        Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;
    }
.end annotation


# static fields
.field private static final BEARER_DATA:B = 0x8t

.field private static final BEARER_REPLY_OPTION:B = 0x6t

.field private static final CAUSE_CODES:B = 0x7t

.field private static final DESTINATION_ADDRESS:B = 0x4t

.field private static final DESTINATION_SUB_ADDRESS:B = 0x5t

.field public static IMSC_RESPONSE_CODE_INTERNAL_ERROR:I = 0x0

.field public static IMSC_RESPONSE_CODE_NOT_ACCEPTABLE_HERE:I = 0x0

.field public static IMSC_RESPONSE_CODE_NOT_FOUND:I = 0x0

.field public static IMSC_RESPONSE_CODE_OK:I = 0x0

.field public static IMSC_RESPONSE_CODE_OK_END:I = 0x0

.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final ORIGINATING_ADDRESS:B = 0x2t

.field private static final ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static final RETURN_ACK:I = 0x1

.field private static final RETURN_NO_ACK:I = 0x0

.field private static final SERVICE_CATEGORY:B = 0x1t

.field private static final TELESERVICE_IDENTIFIER:B


# instance fields
.field private mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

.field protected mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

.field protected mtMsgID:I

.field protected onSip:Z

.field private recipientAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const/16 v0, 0xc8

    sput v0, Lcom/android/internal/telephony/cdma/SmsMessage;->IMSC_RESPONSE_CODE_OK:I

    .line 140
    const/16 v0, 0x12c

    sput v0, Lcom/android/internal/telephony/cdma/SmsMessage;->IMSC_RESPONSE_CODE_OK_END:I

    .line 142
    const/16 v0, 0x1e8

    sput v0, Lcom/android/internal/telephony/cdma/SmsMessage;->IMSC_RESPONSE_CODE_NOT_ACCEPTABLE_HERE:I

    .line 144
    const/16 v0, 0x1f4

    sput v0, Lcom/android/internal/telephony/cdma/SmsMessage;->IMSC_RESPONSE_CODE_INTERNAL_ERROR:I

    .line 146
    const/16 v0, 0x194

    sput v0, Lcom/android/internal/telephony/cdma/SmsMessage;->IMSC_RESPONSE_CODE_NOT_FOUND:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->onSip:Z

    .line 161
    return-void
.end method

.method public static addEnvelopTagForStr([B[BZ)Ljava/lang/String;
    .locals 16
    .parameter "smsc"
    .parameter "rawPdu"
    .parameter "isCdmaPdu"

    .prologue
    .line 727
    const-string v13, "d1"

    .line 728
    .local v13, smsppDownloadTag:Ljava/lang/String;
    const-string v6, "82"

    .line 729
    .local v6, deviceIdenTag:Ljava/lang/String;
    const-string v4, "02"

    .line 730
    .local v4, deviceIdenLen:Ljava/lang/String;
    const-string v5, "83"

    .line 731
    .local v5, deviceIdenSrc:Ljava/lang/String;
    const-string v3, "81"

    .line 732
    .local v3, deviceIdenDes:Ljava/lang/String;
    const-string v1, ""

    .line 733
    .local v1, addrTag:Ljava/lang/String;
    const/4 v12, 0x0

    .line 734
    .local v12, smscLen:I
    if-eqz p0, :cond_0

    .line 735
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "06"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 737
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v12, v14, 0x1

    .line 740
    :cond_0
    if-eqz p2, :cond_1

    const-string v9, "c8"

    .line 741
    .local v9, pduTag:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    array-length v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 742
    .local v8, pduLen:Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v14, v0

    add-int/2addr v14, v12

    add-int/lit8 v11, v14, 0x6

    .line 743
    .local v11, rawPdulen:I
    const/16 v14, 0x80

    if-ge v11, v14, :cond_2

    .line 744
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, dataLen:Ljava/lang/String;
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    .line 748
    .local v10, rawPduString:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 751
    .local v7, envString:Ljava/lang/String;
    return-object v7

    .line 740
    .end local v2           #dataLen:Ljava/lang/String;
    .end local v7           #envString:Ljava/lang/String;
    .end local v8           #pduLen:Ljava/lang/String;
    .end local v9           #pduTag:Ljava/lang/String;
    .end local v10           #rawPduString:Ljava/lang/String;
    .end local v11           #rawPdulen:I
    :cond_1
    const-string v9, "8b"

    goto :goto_0

    .line 746
    .restart local v8       #pduLen:Ljava/lang/String;
    .restart local v9       #pduTag:Ljava/lang/String;
    .restart local v11       #rawPdulen:I
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "81"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #dataLen:Ljava/lang/String;
    goto :goto_1
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 1688
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method private convertDtmfToAscii(B)B
    .locals 1
    .parameter "dtmfDigit"

    .prologue
    .line 2564
    packed-switch p1, :pswitch_data_0

    .line 2582
    const/16 v0, 0x20

    .line 2586
    .local v0, asciiDigit:B
    :goto_0
    return v0

    .line 2565
    .end local v0           #asciiDigit:B
    :pswitch_0
    const/16 v0, 0x44

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 2566
    .end local v0           #asciiDigit:B
    :pswitch_1
    const/16 v0, 0x31

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 2567
    .end local v0           #asciiDigit:B
    :pswitch_2
    const/16 v0, 0x32

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 2568
    .end local v0           #asciiDigit:B
    :pswitch_3
    const/16 v0, 0x33

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 2569
    .end local v0           #asciiDigit:B
    :pswitch_4
    const/16 v0, 0x34

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 2570
    .end local v0           #asciiDigit:B
    :pswitch_5
    const/16 v0, 0x35

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 2571
    .end local v0           #asciiDigit:B
    :pswitch_6
    const/16 v0, 0x36

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 2572
    .end local v0           #asciiDigit:B
    :pswitch_7
    const/16 v0, 0x37

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 2573
    .end local v0           #asciiDigit:B
    :pswitch_8
    const/16 v0, 0x38

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 2574
    .end local v0           #asciiDigit:B
    :pswitch_9
    const/16 v0, 0x39

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 2575
    .end local v0           #asciiDigit:B
    :pswitch_a
    const/16 v0, 0x30

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 2576
    .end local v0           #asciiDigit:B
    :pswitch_b
    const/16 v0, 0x2a

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 2577
    .end local v0           #asciiDigit:B
    :pswitch_c
    const/16 v0, 0x23

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 2578
    .end local v0           #asciiDigit:B
    :pswitch_d
    const/16 v0, 0x41

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 2579
    .end local v0           #asciiDigit:B
    :pswitch_e
    const/16 v0, 0x42

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 2580
    .end local v0           #asciiDigit:B
    :pswitch_f
    const/16 v0, 0x43

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 2564
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static create3gppSipPdu([BLcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;I)V
    .locals 35
    .parameter "pdu"
    .parameter "tracker"
    .parameter "defSmscStr"
    .parameter "rpMessageRef"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 807
    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 808
    .local v4, bais:Ljava/io/ByteArrayInputStream;
    new-instance v15, Ljava/io/DataInputStream;

    invoke-direct {v15, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 809
    .local v15, dis:Ljava/io/DataInputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v32, 0x64

    move/from16 v0, v32

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 810
    .local v5, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 819
    .local v16, dos:Ljava/io/DataOutputStream;
    const/16 v23, 0x1

    .line 822
    .local v23, mtiByte:I
    const/16 v22, 0x0

    .line 826
    .local v22, msgRef:I
    :try_start_0
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    .line 827
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    .line 828
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    .line 829
    invoke-virtual {v15}, Ljava/io/DataInputStream;->read()I

    move-result v14

    .line 830
    .local v14, digitMode:I
    invoke-virtual {v15}, Ljava/io/DataInputStream;->read()I

    .line 831
    invoke-virtual {v15}, Ljava/io/DataInputStream;->read()I

    .line 832
    invoke-virtual {v15}, Ljava/io/DataInputStream;->read()I

    .line 833
    invoke-virtual {v15}, Ljava/io/DataInputStream;->read()I

    move-result v24

    .line 834
    .local v24, numberOfDigits:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 837
    .local v10, da:Ljava/lang/StringBuilder;
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 838
    invoke-virtual {v15}, Ljava/io/DataInputStream;->read()I

    move-result v9

    .line 839
    .local v9, c:I
    if-nez v14, :cond_0

    .line 840
    const/16 v32, 0x1

    move/from16 v0, v32

    if-lt v9, v0, :cond_1

    const/16 v32, 0x9

    move/from16 v0, v32

    if-gt v9, v0, :cond_1

    .line 841
    add-int/lit8 v9, v9, 0x30

    .line 849
    :cond_0
    :goto_1
    int-to-char v0, v9

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 837
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 842
    :cond_1
    const/16 v32, 0xa

    move/from16 v0, v32

    if-ne v9, v0, :cond_2

    .line 843
    const/16 v9, 0x30

    goto :goto_1

    .line 844
    :cond_2
    const/16 v32, 0xb

    move/from16 v0, v32

    if-ne v9, v0, :cond_3

    .line 845
    const/16 v9, 0x2a

    goto :goto_1

    .line 846
    :cond_3
    const/16 v32, 0xc

    move/from16 v0, v32

    if-ne v9, v0, :cond_0

    .line 847
    const/16 v9, 0x23

    goto :goto_1

    .line 852
    .end local v9           #c:I
    :cond_4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v11

    .line 855
    .local v11, daBytes:[B
    const/16 v25, 0x0

    .line 862
    .local v25, pi:I
    invoke-virtual {v15}, Ljava/io/DataInputStream;->read()I

    .line 863
    invoke-virtual {v15}, Ljava/io/DataInputStream;->read()I

    .line 864
    invoke-virtual {v15}, Ljava/io/DataInputStream;->read()I

    .line 865
    invoke-virtual {v15}, Ljava/io/DataInputStream;->read()I

    move-result v8

    .line 866
    .local v8, bearerDataLen:I
    new-array v7, v8, [B

    .line 867
    .local v7, bearerData:[B
    invoke-virtual {v15, v7}, Ljava/io/DataInputStream;->read([B)I

    .line 868
    invoke-static {v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v6

    .line 869
    .local v6, bd:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v12, 0x0

    .line 870
    .local v12, dcs:I
    const/16 v31, 0x0

    .line 871
    .local v31, userData:[B
    const/16 v30, 0x0

    .line 872
    .local v30, ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    if-eqz v6, :cond_5

    .line 873
    iget-object v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    move-object/from16 v30, v0

    .line 875
    :cond_5
    if-eqz v30, :cond_9

    .line 876
    iget-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    move/from16 v32, v0

    if-eqz v32, :cond_6

    .line 877
    or-int/lit8 v23, v23, 0x40

    .line 879
    :cond_6
    iget-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    move/from16 v32, v0

    if-eqz v32, :cond_7

    .line 880
    or-int/lit8 v23, v23, 0x20

    .line 882
    :cond_7
    const/16 v19, 0x0

    .line 883
    .local v19, header:[B
    iget-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    move/from16 v32, v0

    if-eqz v32, :cond_8

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    .line 884
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v19

    .line 890
    :cond_8
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    move/from16 v32, v0

    sparse-switch v32, :sswitch_data_0

    .line 925
    .end local v19           #header:[B
    :cond_9
    :goto_2
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 926
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 927
    if-eqz v11, :cond_a

    .line 928
    array-length v0, v11

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    mul-int/lit8 v33, v32, 0x2

    array-length v0, v11

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    aget-byte v32, v11, v32

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xf0

    move/from16 v32, v0

    const/16 v34, 0xf0

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_f

    const/16 v32, 0x1

    :goto_3
    sub-int v32, v33, v32

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 930
    const/16 v32, 0x0

    array-length v0, v11

    move/from16 v33, v0

    move-object/from16 v0, v16

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v11, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 933
    :cond_a
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 934
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 936
    if-eqz v31, :cond_b

    .line 940
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x8d

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_10

    .line 941
    const/16 v32, 0x0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 948
    :cond_b
    :goto_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v28

    .line 951
    .local v28, tpdu:[B
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    move-object/from16 v21, v0

    .line 952
    .local v21, map:Ljava/util/HashMap;
    const-string v32, "smsc"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [B

    move-object/from16 v0, v32

    check-cast v0, [B

    move-object/from16 v27, v0

    .line 954
    .local v27, smsc:[B
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v26, v0

    .line 956
    .local v26, size:I
    new-instance v29, Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v32, v26, 0x14

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 957
    .local v29, tpdubo:Ljava/io/ByteArrayOutputStream;
    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 958
    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 959
    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 960
    if-eqz v27, :cond_11

    .line 961
    const/16 v32, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 974
    :cond_c
    :goto_5
    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 975
    if-eqz v28, :cond_d

    .line 976
    const/16 v32, 0x0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 978
    :cond_d
    if-eqz v6, :cond_e

    .line 979
    iget v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 983
    :cond_e
    const-string v32, "sip_pdu"

    invoke-virtual/range {v29 .. v29}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    const-string v32, "desitnation_addr"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    .end local v6           #bd:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v7           #bearerData:[B
    .end local v8           #bearerDataLen:I
    .end local v10           #da:Ljava/lang/StringBuilder;
    .end local v11           #daBytes:[B
    .end local v12           #dcs:I
    .end local v14           #digitMode:I
    .end local v20           #i:I
    .end local v21           #map:Ljava/util/HashMap;
    .end local v24           #numberOfDigits:I
    .end local v25           #pi:I
    .end local v26           #size:I
    .end local v27           #smsc:[B
    .end local v28           #tpdu:[B
    .end local v29           #tpdubo:Ljava/io/ByteArrayOutputStream;
    .end local v30           #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local v31           #userData:[B
    :goto_6
    return-void

    .line 892
    .restart local v6       #bd:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v7       #bearerData:[B
    .restart local v8       #bearerDataLen:I
    .restart local v10       #da:Ljava/lang/StringBuilder;
    .restart local v11       #daBytes:[B
    .restart local v12       #dcs:I
    .restart local v14       #digitMode:I
    .restart local v19       #header:[B
    .restart local v20       #i:I
    .restart local v24       #numberOfDigits:I
    .restart local v25       #pi:I
    .restart local v30       #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local v31       #userData:[B
    :sswitch_0
    const/4 v12, 0x4

    .line 894
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    move-object/from16 v31, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 895
    goto/16 :goto_2

    .line 899
    :sswitch_1
    const/4 v12, 0x0

    .line 901
    :try_start_1
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_9

    .line 902
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v31

    goto/16 :goto_2

    .line 906
    :catch_0
    move-exception v18

    .line 907
    .local v18, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_2
    const-string v32, "CDMA"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " stringToGsm7BitPackedWithHeader exception - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 985
    .end local v6           #bd:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v7           #bearerData:[B
    .end local v8           #bearerDataLen:I
    .end local v10           #da:Ljava/lang/StringBuilder;
    .end local v11           #daBytes:[B
    .end local v12           #dcs:I
    .end local v14           #digitMode:I
    .end local v18           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v19           #header:[B
    .end local v20           #i:I
    .end local v24           #numberOfDigits:I
    .end local v25           #pi:I
    .end local v30           #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local v31           #userData:[B
    :catch_1
    move-exception v17

    .line 986
    .local v17, e:Ljava/lang/Exception;
    const-string v32, "CDMA"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " exception  is "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 912
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v6       #bd:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v7       #bearerData:[B
    .restart local v8       #bearerDataLen:I
    .restart local v10       #da:Ljava/lang/StringBuilder;
    .restart local v11       #daBytes:[B
    .restart local v12       #dcs:I
    .restart local v14       #digitMode:I
    .restart local v19       #header:[B
    .restart local v20       #i:I
    .restart local v24       #numberOfDigits:I
    .restart local v25       #pi:I
    .restart local v30       #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local v31       #userData:[B
    :sswitch_2
    const/16 v12, 0x8

    .line 914
    :try_start_3
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_9

    .line 915
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v31

    goto/16 :goto_2

    .line 917
    :catch_2
    move-exception v17

    .line 918
    .local v17, e:Ljava/io/UnsupportedEncodingException;
    :try_start_4
    const-string v32, "CDMA"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " encodeUCS2 exception - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 928
    .end local v17           #e:Ljava/io/UnsupportedEncodingException;
    .end local v19           #header:[B
    :cond_f
    const/16 v32, 0x0

    goto/16 :goto_3

    .line 944
    :cond_10
    const/16 v31, 0x0

    goto/16 :goto_4

    .line 964
    .restart local v21       #map:Ljava/util/HashMap;
    .restart local v26       #size:I
    .restart local v27       #smsc:[B
    .restart local v28       #tpdu:[B
    .restart local v29       #tpdubo:Ljava/io/ByteArrayOutputStream;
    :cond_11
    if-eqz p2, :cond_12

    .line 965
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v13

    .line 967
    .local v13, defSmsc:[B
    if-eqz v13, :cond_c

    .line 968
    const/16 v32, 0x0

    array-length v0, v13

    move/from16 v33, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v13, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_5

    .line 971
    .end local v13           #defSmsc:[B
    :cond_12
    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_5

    .line 890
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public static create3gppSipPduFromRawPdu([BLcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;I)V
    .locals 14
    .parameter "pdu"
    .parameter "tracker"
    .parameter "defSmscStr"
    .parameter "rpMessageRef"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 757
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 758
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 762
    .local v3, dis:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    array-length v11, p0

    add-int/lit8 v11, v11, 0x1

    invoke-direct {v7, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 764
    .local v7, newPdu:Ljava/io/ByteArrayOutputStream;
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 765
    const/4 v11, 0x0

    array-length v12, p0

    invoke-virtual {v7, p0, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 766
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 768
    .local v5, gsmRawPdu:[B
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 769
    .local v6, map:Ljava/util/HashMap;
    const-string v11, "smsc"

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    move-object v9, v0

    .line 770
    .local v9, smsc:[B
    array-length v8, p0

    .line 772
    .local v8, size:I
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v11, v8, 0x14

    invoke-direct {v10, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 773
    .local v10, tpdubo:Ljava/io/ByteArrayOutputStream;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 774
    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 775
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 776
    if-eqz v9, :cond_2

    .line 777
    const/4 v11, 0x0

    array-length v12, v9

    invoke-virtual {v10, v9, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 790
    :cond_0
    :goto_0
    invoke-virtual {v10, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 791
    if-eqz p0, :cond_1

    .line 792
    const/4 v11, 0x0

    array-length v12, p0

    invoke-virtual {v10, p0, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 794
    :cond_1
    const/4 v11, 0x0

    iput v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 796
    const-string v11, "sip_pdu"

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    .end local v5           #gsmRawPdu:[B
    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #newPdu:Ljava/io/ByteArrayOutputStream;
    .end local v8           #size:I
    .end local v9           #smsc:[B
    .end local v10           #tpdubo:Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-void

    .line 780
    .restart local v5       #gsmRawPdu:[B
    .restart local v6       #map:Ljava/util/HashMap;
    .restart local v7       #newPdu:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #size:I
    .restart local v9       #smsc:[B
    .restart local v10       #tpdubo:Ljava/io/ByteArrayOutputStream;
    :cond_2
    if-eqz p2, :cond_3

    .line 781
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    .line 783
    .local v2, defSmsc:[B
    if-eqz v2, :cond_0

    .line 784
    const/4 v11, 0x0

    array-length v12, v2

    invoke-virtual {v10, v2, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 797
    .end local v2           #defSmsc:[B
    .end local v5           #gsmRawPdu:[B
    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #newPdu:Ljava/io/ByteArrayOutputStream;
    .end local v8           #size:I
    .end local v9           #smsc:[B
    .end local v10           #tpdubo:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    .line 798
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " exception  is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 787
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #gsmRawPdu:[B
    .restart local v6       #map:Ljava/util/HashMap;
    .restart local v7       #newPdu:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #size:I
    .restart local v9       #smsc:[B
    .restart local v10       #tpdubo:Ljava/io/ByteArrayOutputStream;
    :cond_3
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v10, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static createCMTPdu([B)[B
    .locals 9
    .parameter "sippdu"

    .prologue
    const/4 v8, 0x0

    .line 528
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 529
    .local v0, inStream:Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v6, p0

    invoke-direct {v1, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 530
    .local v1, outStream:Ljava/io/ByteArrayOutputStream;
    const-wide/16 v6, 0x2

    invoke-virtual {v0, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 531
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 534
    .local v5, scLength:I
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 535
    if-lez v5, :cond_0

    .line 536
    new-array v4, v5, [B

    .line 537
    .local v4, scBytes:[B
    invoke-virtual {v0, v4, v8, v5}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 539
    invoke-virtual {v1, v4, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 542
    .end local v4           #scBytes:[B
    :cond_0
    const-wide/16 v6, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 543
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 544
    .local v3, rawPduLength:I
    new-array v2, v3, [B

    .line 545
    .local v2, rawPdu:[B
    invoke-virtual {v0, v2, v8, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 547
    invoke-virtual {v1, v2, v8, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 548
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method public static createEnvelopPdu([BZ)Ljava/lang/String;
    .locals 14
    .parameter "sippdu"
    .parameter "isCdmaPdu"

    .prologue
    const/4 v13, 0x0

    .line 691
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 692
    .local v1, inStream:Ljava/io/ByteArrayInputStream;
    const-wide/16 v11, 0x2

    invoke-virtual {v1, v11, v12}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 693
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 694
    .local v8, scLength:I
    const/4 v7, 0x0

    .line 695
    .local v7, scBytes:[B
    const/4 v9, 0x0

    .line 696
    .local v9, tpdu:[B
    const/4 v2, 0x0

    .line 697
    .local v2, index:I
    if-lez v8, :cond_0

    .line 698
    add-int/lit8 v11, v8, 0x1

    new-array v7, v11, [B

    .line 699
    and-int/lit16 v11, v8, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v13

    .line 700
    const/4 v11, 0x1

    invoke-virtual {v1, v7, v11, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 702
    :cond_0
    const-wide/16 v11, 0x1

    invoke-virtual {v1, v11, v12}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 703
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v10

    .line 704
    .local v10, tpduLen:I
    new-array v9, v10, [B

    .line 705
    invoke-virtual {v1, v9, v13, v10}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 707
    add-int/lit8 v2, v2, 0x1

    .line 708
    aget-byte v11, v9, v2

    and-int/lit16 v0, v11, 0xff

    .line 709
    .local v0, addressLength:I
    add-int/lit8 v11, v0, 0x1

    div-int/lit8 v11, v11, 0x2

    add-int/lit8 v4, v11, 0x2

    .line 710
    .local v4, lengthBytes:I
    add-int/lit8 v2, v4, 0x1

    .line 711
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    aget-byte v11, v9, v2

    and-int/lit16 v6, v11, 0xff

    .line 712
    .local v6, protocolIdentifier:I
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v11, v9, v3

    and-int/lit16 v11, v11, 0xff

    and-int/lit8 v5, v11, 0x3

    .line 715
    .local v5, messageClass:I
    const/16 v11, 0x7f

    if-ne v6, v11, :cond_1

    const/4 v11, 0x2

    if-ne v5, v11, :cond_1

    .line 716
    invoke-static {v7, v9, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->addEnvelopTagForStr([B[BZ)Ljava/lang/String;

    move-result-object v11

    .line 718
    :goto_0
    return-object v11

    :cond_1
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 7
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 1336
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 1338
    .local v1, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    .line 1343
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 1344
    const-string v5, "CDMA"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 1368
    .end local v1           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :goto_0
    return-object v1

    .line 1347
    .restart local v1       #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    .line 1354
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v3, v5, 0xff

    .line 1360
    .local v3, size:I
    new-array v2, v3, [B

    .line 1361
    .local v2, pdu:[B
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1364
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePduFromEfRecord([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1366
    .end local v1           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v0

    .line 1367
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v5, "CDMA"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 1368
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 4
    .parameter "pdu"

    .prologue
    .line 171
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 174
    .local v1, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :try_start_0
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-object v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "CDMA"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->setEmpty()V

    goto :goto_0
.end method

.method public static createMsgFrom3gppSipPdu(I[B[I)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 23
    .parameter "mtMsgID"
    .parameter "pdu"
    .parameter "dcs"

    .prologue
    .line 552
    new-instance v14, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 553
    .local v14, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 554
    .local v6, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 555
    .local v2, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 557
    .local v3, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createCMTPdu([B)[B

    move-result-object v17

    .line 558
    .local v17, rawpdu:[B
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v8

    .line 562
    .local v8, gsmSms:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v18

    .line 563
    .local v18, scAddr:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v16

    .line 564
    .local v16, orAddr:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDataCodingScheme()I

    move-result v4

    .line 566
    .local v4, dataCodingScheme:I
    const/16 v20, 0x0

    aput v4, p2, v20

    .line 567
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v15

    .line 568
    .local v15, msgBody:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result v10

    .line 569
    .local v10, gsmVoiceMailNum:I
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage()Z

    move-result v13

    .line 570
    .local v13, isStatusReportMessage:Z
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v11

    .line 571
    .local v11, gsmuserdata:[B
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    .line 572
    .local v9, gsmSmsheader:Lcom/android/internal/telephony/SmsHeader;
    if-nez v9, :cond_1

    .line 573
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 579
    :goto_0
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v14, Lcom/android/internal/telephony/cdma/SmsMessage;->onSip:Z

    .line 580
    move/from16 v0, p0

    iput v0, v14, Lcom/android/internal/telephony/cdma/SmsMessage;->mtMsgID:I

    .line 581
    iput-object v6, v14, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 583
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 585
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v20

    if-nez v20, :cond_0

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 586
    :cond_0
    const/16 v20, 0x1003

    move/from16 v0, v20

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 592
    :goto_1
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 593
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 594
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-byte v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 595
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-byte v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 596
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-byte v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 599
    if-eqz v16, :cond_5

    .line 600
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 601
    if-eqz v2, :cond_4

    .line 602
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    iget-object v0, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_4

    .line 603
    iget-object v0, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v20, v0

    iget-object v0, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v21, v0

    aget-byte v21, v21, v12

    move/from16 v0, v21

    invoke-direct {v14, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v21

    aput-byte v21, v20, v12

    .line 602
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 575
    .end local v12           #i:I
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 659
    .end local v4           #dataCodingScheme:I
    .end local v8           #gsmSms:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v9           #gsmSmsheader:Lcom/android/internal/telephony/SmsHeader;
    .end local v10           #gsmVoiceMailNum:I
    .end local v11           #gsmuserdata:[B
    .end local v13           #isStatusReportMessage:Z
    .end local v15           #msgBody:Ljava/lang/String;
    .end local v16           #orAddr:Ljava/lang/String;
    .end local v17           #rawpdu:[B
    .end local v18           #scAddr:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 660
    .local v7, ex:Ljava/lang/Exception;
    const-string v20, "CDMA"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SIP Pdu decode failed: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v14, 0x0

    .end local v7           #ex:Ljava/lang/Exception;
    .end local v14           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :goto_3
    return-object v14

    .line 588
    .restart local v4       #dataCodingScheme:I
    .restart local v8       #gsmSms:Lcom/android/internal/telephony/gsm/SmsMessage;
    .restart local v9       #gsmSmsheader:Lcom/android/internal/telephony/SmsHeader;
    .restart local v10       #gsmVoiceMailNum:I
    .restart local v11       #gsmuserdata:[B
    .restart local v13       #isStatusReportMessage:Z
    .restart local v14       #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    .restart local v15       #msgBody:Ljava/lang/String;
    .restart local v16       #orAddr:Ljava/lang/String;
    .restart local v17       #rawpdu:[B
    .restart local v18       #scAddr:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    const/16 v20, 0x1005

    :goto_4
    move/from16 v0, v20

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    goto :goto_1

    :cond_3
    const/16 v20, 0x1002

    goto :goto_4

    .line 605
    :cond_4
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 607
    :cond_5
    if-eqz v13, :cond_a

    .line 608
    const/16 v20, 0x4

    move/from16 v0, v20

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 612
    :goto_5
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 613
    new-instance v19, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 614
    .local v19, userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    shr-int/lit8 v20, v4, 0x2

    and-int/lit8 v20, v20, 0x3

    packed-switch v20, :pswitch_data_0

    .line 640
    :cond_6
    :goto_6
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 642
    :cond_7
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 646
    :goto_7
    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 648
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v20

    if-nez v20, :cond_8

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 649
    :cond_8
    iput v10, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 652
    :cond_9
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v5

    .line 653
    .local v5, encodedSms:[B
    iput-object v5, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 654
    iput-object v2, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 655
    iput-object v2, v14, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 657
    invoke-direct {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    goto :goto_3

    .line 610
    .end local v5           #encodedSms:[B
    .end local v19           #userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_a
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    goto :goto_5

    .line 616
    .restart local v19       #userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :pswitch_0
    const/16 v20, 0x9

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 617
    move-object/from16 v0, v19

    iput-object v15, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 618
    iget-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 619
    move-object/from16 v0, v19

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    goto :goto_6

    .line 623
    :pswitch_1
    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 624
    move-object/from16 v0, v19

    iput-object v15, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 625
    iget-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 626
    move-object/from16 v0, v19

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    goto :goto_6

    .line 631
    :pswitch_2
    const-string v20, "CDMA"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unsupported SMS data coding scheme "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    and-int/lit16 v0, v4, 0xff

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/16 v20, 0x9

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 634
    move-object/from16 v0, v19

    iput-object v11, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 635
    iget-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 636
    move-object/from16 v0, v19

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    goto/16 :goto_6

    .line 644
    :cond_b
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 614
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createMsgFromSipPdu(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 7
    .parameter "mtMsgID"
    .parameter "pdu"

    .prologue
    .line 1018
    new-instance v3, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 1019
    .local v3, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1020
    .local v0, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v2, p1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1030
    .local v2, inStream:Lcom/android/internal/util/BitwiseInputStream;
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/SmsMessage;->onSip:Z

    .line 1031
    iput p0, v3, Lcom/android/internal/telephony/cdma/SmsMessage;->mtMsgID:I

    .line 1032
    iput-object v0, v3, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1034
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1036
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    packed-switch v4, :pswitch_data_0

    .line 1047
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createMsgFromSipPdu: messageType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is not supported in CDMA mode."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wrong messageType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1054
    :catch_0
    move-exception v1

    .line 1055
    .local v1, ex:Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIP Pdu decode failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    .end local v1           #ex:Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;
    :goto_0
    const/4 v3, 0x0

    .end local v3           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :goto_1
    return-object v3

    .line 1038
    .restart local v3       #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :pswitch_0
    :try_start_1
    invoke-static {v3, v0, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseAckMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)V

    .line 1052
    :goto_2
    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V
    :try_end_1
    .catch Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1056
    :catch_1
    move-exception v1

    .line 1057
    .local v1, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIP Pdu decode failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1041
    .end local v1           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :pswitch_1
    :try_start_2
    invoke-static {v3, v0, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)V

    goto :goto_2

    .line 1044
    :pswitch_2
    invoke-static {v3, v0, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePTPMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1036
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createPdu()V
    .locals 8

    .prologue
    .line 2501
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 2502
    .local v3, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iget-object v0, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 2503
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x64

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2504
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2507
    .local v2, dos:Ljava/io/DataOutputStream;
    :try_start_0
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2508
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2509
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2511
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2512
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2513
    iget v5, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2514
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2515
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2516
    iget-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2518
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2520
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2521
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2522
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2524
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2525
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2526
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 2536
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2540
    :goto_0
    return-void

    .line 2537
    :catch_0
    move-exception v4

    .line 2538
    .local v4, ex:Ljava/io/IOException;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPdu: conversion from object to byte array failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createSipPdu([BLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 20
    .parameter "pdu"
    .parameter "tracker"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1070
    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1071
    .local v3, bais:Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1072
    .local v5, dis:Ljava/io/DataInputStream;
    new-instance v15, Lcom/android/internal/util/BitwiseOutputStream;

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    invoke-direct {v15, v0}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 1074
    .local v15, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    const/16 v16, 0x0

    .line 1075
    .local v16, paramLength:I
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1076
    .local v9, map:Ljava/util/HashMap;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1084
    .local v2, addr:Ljava/lang/StringBuffer;
    const/16 v18, 0x8

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1087
    const/16 v18, 0x8

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1088
    const/16 v18, 0x8

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1089
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    .line 1090
    .local v17, paramValue:I
    const/16 v18, 0x8

    shr-int/lit8 v19, v17, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1091
    const/16 v18, 0x8

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1093
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .line 1095
    const/16 v18, 0x8

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1096
    const/16 v18, 0x8

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1097
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    .line 1098
    const/16 v18, 0x8

    shr-int/lit8 v19, v17, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1099
    const/16 v18, 0x8

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1101
    const/16 v18, 0x8

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1102
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .line 1103
    .local v4, digitMode:I
    add-int/lit8 v16, v16, 0x1

    .line 1104
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v11

    .line 1105
    .local v11, numberMode:I
    add-int/lit8 v16, v16, 0x1

    .line 1106
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v14

    .line 1107
    .local v14, numberType:I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_0

    .line 1108
    add-int/lit8 v16, v16, 0x3

    .line 1110
    :cond_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v13

    .line 1111
    .local v13, numberPlan:I
    if-eqz v4, :cond_1

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_1

    .line 1112
    add-int/lit8 v16, v16, 0x4

    .line 1114
    :cond_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v12

    .line 1115
    .local v12, numberOfDigits:I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_5

    .line 1116
    shl-int/lit8 v18, v12, 0x3

    add-int/lit8 v18, v18, 0x8

    add-int v16, v16, v18

    .line 1120
    :goto_0
    add-int/lit8 v18, v16, 0x7

    shr-int/lit8 v16, v18, 0x3

    .line 1121
    const/16 v18, 0x8

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1122
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1123
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0, v11}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1124
    shl-int/lit8 v16, v16, 0x3

    .line 1125
    add-int/lit8 v16, v16, -0x2

    .line 1126
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_2

    .line 1127
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v15, v0, v14}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1128
    add-int/lit8 v16, v16, -0x3

    .line 1130
    :cond_2
    if-eqz v4, :cond_3

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_3

    .line 1131
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v15, v0, v13}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1132
    add-int/lit8 v16, v16, -0x4

    .line 1134
    :cond_3
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v15, v0, v12}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1135
    add-int/lit8 v16, v16, -0x8

    .line 1136
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v12, :cond_a

    .line 1137
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v17

    .line 1138
    if-nez v4, :cond_9

    .line 1140
    const/16 v18, 0x4

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1141
    add-int/lit8 v16, v16, -0x4

    .line 1142
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_6

    .line 1143
    add-int/lit8 v17, v17, 0x30

    .line 1154
    :cond_4
    :goto_2
    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1136
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1118
    .end local v6           #i:I
    :cond_5
    shl-int/lit8 v18, v12, 0x2

    add-int/lit8 v18, v18, 0x8

    add-int v16, v16, v18

    goto/16 :goto_0

    .line 1144
    .restart local v6       #i:I
    :cond_6
    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1145
    const/16 v17, 0x30

    goto :goto_2

    .line 1146
    :cond_7
    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1147
    const/16 v17, 0x2a

    goto :goto_2

    .line 1148
    :cond_8
    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1149
    const/16 v17, 0x23

    goto :goto_2

    .line 1151
    :cond_9
    const/16 v18, 0x8

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1152
    add-int/lit8 v16, v16, -0x8

    goto :goto_2

    .line 1157
    :cond_a
    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1159
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    .line 1160
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    .line 1161
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v16

    .line 1162
    const/4 v6, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v6, v0, :cond_b

    .line 1163
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    .line 1162
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1166
    :cond_b
    const/16 v18, 0x8

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1167
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v16

    .line 1168
    const/16 v18, 0x8

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1169
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v10, v0, [B

    .line 1170
    .local v10, msgID:[B
    const/4 v6, 0x0

    const/4 v8, 0x0

    .local v8, j:I
    :goto_4
    move/from16 v0, v16

    if-ge v6, v0, :cond_d

    .line 1171
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ge v8, v0, :cond_c

    .line 1173
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v18

    aput-byte v18, v10, v8

    .line 1174
    const/16 v18, 0x8

    aget-byte v19, v10, v8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1175
    add-int/lit8 v8, v8, 0x1

    .line 1170
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1177
    :cond_c
    const/16 v18, 0x8

    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_5

    .line 1181
    :cond_d
    new-instance v7, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v7, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1182
    .local v7, inStream:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v18, 0x14

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1183
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v18

    shl-int/lit8 v18, v18, 0x8

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v19

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 1191
    const-string v18, "sip_pdu"

    invoke-virtual {v15}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    const-string v18, "desitnation_addr"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    return-void
.end method

.method private static decodeAddress(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;Z)Z
    .locals 11
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .parameter "isOriginalAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 210
    const/16 v0, 0xa

    .line 211
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v3, 0x0

    .line 212
    .local v3, decodeSuccess:Z
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 213
    .local v1, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/16 v8, 0x8

    invoke-virtual {p2, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    mul-int/lit8 v5, v8, 0x8

    .line 214
    .local v5, paramBits:I
    const/16 v8, 0xa

    if-lt v5, v8, :cond_5

    .line 215
    add-int/lit8 v5, v5, -0xa

    .line 216
    const/4 v8, 0x1

    invoke-virtual {p2, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 217
    const/4 v8, 0x1

    invoke-virtual {p2, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 219
    iget v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-eqz v8, :cond_0

    .line 220
    const/4 v8, 0x3

    invoke-virtual {p2, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, v1, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 221
    add-int/lit8 v5, v5, -0x3

    .line 225
    :goto_0
    iget v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-eqz v8, :cond_1

    iget v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    .line 227
    const/4 v8, 0x4

    invoke-virtual {p2, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 228
    add-int/lit8 v5, v5, -0x4

    .line 232
    :goto_1
    const/16 v8, 0x8

    invoke-virtual {p2, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 233
    iget v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    new-array v2, v8, [B

    .line 235
    .local v2, data:[B
    const/4 v4, 0x0

    .local v4, index:I
    :goto_2
    iget v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v4, v8, :cond_3

    .line 236
    iget v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-nez v8, :cond_2

    .line 238
    const/4 v8, 0x4

    invoke-virtual {p2, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    int-to-byte v7, v8

    .line 239
    .local v7, value:B
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v2, v4

    .line 235
    .end local v7           #value:B
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 223
    .end local v2           #data:[B
    .end local v4           #index:I
    :cond_0
    const/4 v8, 0x0

    iput v8, v1, Lcom/android/internal/telephony/SmsAddress;->ton:I

    goto :goto_0

    .line 230
    :cond_1
    const/4 v8, 0x0

    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    goto :goto_1

    .line 241
    .restart local v2       #data:[B
    .restart local v4       #index:I
    :cond_2
    const/16 v8, 0x8

    invoke-virtual {p2, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v2, v4

    goto :goto_3

    .line 245
    :cond_3
    iget v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-nez v8, :cond_8

    .line 246
    iget v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    shl-int/lit8 v8, v8, 0x2

    sub-int/2addr v5, v8

    .line 251
    :goto_4
    iput-object v2, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 254
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isNBPCDEnable()Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    iget v8, v1, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    iget-object v8, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_4

    .line 258
    const-string v8, "SmsMessage for NBPCD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PCD formatted address. Converting to ASCII:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v8, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-static {v8}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, temp:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 262
    invoke-static {v6}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v8

    iput-object v8, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 264
    const-string v8, "SmsMessage for NBPCD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PCD formatted address used  getAsciiBytes Adding a +:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 267
    const-string v8, "SmsMessage for NBPCD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Increasing number of digits"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v6           #temp:Ljava/lang/String;
    :cond_4
    iput-object v1, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 270
    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 271
    const/4 v3, 0x1

    .line 273
    .end local v2           #data:[B
    .end local v4           #index:I
    :cond_5
    if-eqz v3, :cond_6

    const/16 v8, 0x8

    if-lt v5, v8, :cond_7

    .line 274
    :cond_6
    const-string v9, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CAUSE_CODES decode "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v3, :cond_9

    const-string v8, "succeeded"

    :goto_5
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " (extra bits = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_7
    invoke-virtual {p2, v5}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 279
    return v3

    .line 248
    .restart local v2       #data:[B
    .restart local v4       #index:I
    :cond_8
    iget v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    shl-int/lit8 v8, v8, 0x3

    sub-int/2addr v5, v8

    goto/16 :goto_4

    .line 274
    .end local v2           #data:[B
    .end local v4           #index:I
    :cond_9
    const-string v8, "failed"

    goto :goto_5
.end method

.method private static decodeBearerData(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 341
    .local v1, decodeSuccess:Z
    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 342
    .local v2, paramBits:I
    if-ltz v2, :cond_0

    .line 343
    invoke-virtual {p2, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 344
    const/4 v1, 0x1

    .line 345
    const/4 v2, 0x0

    .line 347
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 348
    :cond_1
    const-string v4, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PARAM_BEARER_DATA decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_2
    return v1

    .line 348
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeCauseCodes(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 288
    const/16 v0, 0x8

    .line 289
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 290
    .local v1, decodeSuccess:Z
    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 291
    .local v2, paramBits:I
    if-lt v2, v4, :cond_1

    .line 292
    add-int/lit8 v2, v2, -0x8

    .line 293
    const/4 v3, 0x6

    invoke-virtual {p2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 294
    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 295
    iget-byte v3, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    if-eqz v3, :cond_0

    .line 296
    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 297
    add-int/lit8 v2, v2, -0x8

    .line 299
    :cond_0
    const/4 v1, 0x1

    .line 301
    :cond_1
    if-eqz v1, :cond_2

    if-lez v2, :cond_3

    .line 302
    :cond_2
    const-string v4, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CAUSE_CODES decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_4

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_3
    invoke-virtual {p2, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 307
    return v1

    .line 302
    :cond_4
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeReplyOption(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 384
    const/16 v0, 0x8

    .line 385
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 386
    .local v1, decodeSuccess:Z
    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 387
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 388
    add-int/lit8 v2, v2, -0x8

    .line 389
    const/4 v3, 0x6

    invoke-virtual {p2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 390
    const/4 v1, 0x1

    .line 392
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 393
    :cond_1
    const-string v4, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PARAM_BEARER_REPLY_OPTION decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_2
    invoke-virtual {p2, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 398
    return v1

    .line 393
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeServiceCategory(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 316
    const/16 v0, 0x10

    .line 317
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 318
    .local v1, decodeSuccess:Z
    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 319
    .local v2, paramBits:I
    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 320
    add-int/lit8 v2, v2, -0x10

    .line 321
    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 322
    const/4 v1, 0x1

    .line 324
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 325
    :cond_1
    const-string v4, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SERVICE_CATEGORY decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_2
    invoke-virtual {p2, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 330
    return v1

    .line 325
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeSubAddress(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;Z)Z
    .locals 2
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .parameter "isOriginalAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 199
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/lit8 v0, v1, 0x8

    .line 200
    .local v0, paramBits:I
    invoke-virtual {p2, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 201
    const/4 v1, 0x1

    return v1
.end method

.method private static decodeTeleserviceID(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 361
    const/16 v0, 0x10

    .line 362
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 363
    .local v1, decodeSuccess:Z
    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 364
    .local v2, paramBits:I
    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 365
    add-int/lit8 v2, v2, -0x10

    .line 366
    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 367
    const/4 v1, 0x1

    .line 369
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 370
    :cond_1
    const-string v4, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PARAM_TELESERVICE_ID decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_2
    invoke-virtual {p2, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 375
    return v1

    .line 370
    :cond_3
    const-string v3, "failed"

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

    .line 993
    const-string v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 995
    .local v1, textPart:[B
    if-eqz p1, :cond_0

    .line 997
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 999
    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 1000
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1001
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1005
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 1006
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 1007
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1008
    return-object v0

    .line 1003
    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;
    .locals 4
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"

    .prologue
    const/4 v3, 0x0

    .line 2665
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetDeliverEnv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v1

    .line 2666
    .local v1, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->writePdu(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)[B

    move-result-object v0

    .line 2667
    .local v0, encodedMsg:[B
    if-nez v0, :cond_0

    move-object v2, v3

    .line 2673
    :goto_0
    return-object v2

    .line 2669
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;-><init>()V

    .line 2670
    .local v2, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;
    iput-object v0, v2, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedMessage:[B

    .line 2671
    iput-object v3, v2, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    goto :goto_0
.end method

.method private static declared-synchronized getNextMessageId()I
    .locals 6

    .prologue
    .line 2284
    const-class v3, Lcom/android/internal/telephony/cdma/SmsMessage;

    monitor-enter v3

    :try_start_0
    const-string v2, "persist.radio.cdma.msgid"

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2285
    .local v0, msgId:I
    const v2, 0xffff

    rem-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2286
    .local v1, nextMsgId:Ljava/lang/String;
    const-string v2, "persist.radio.cdma.msgid"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    const-string v2, "CDMA:SMS"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2288
    const-string v2, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next persist.radio.cdma.msgid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    const-string v2, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readback gets "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persist.radio.cdma.msgid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2292
    :cond_0
    monitor-exit v3

    return v0

    .line 2284
    .end local v1           #nextMsgId:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "destAddr"
    .parameter "userData"
    .parameter "statusReportRequested"

    .prologue
    .line 1574
    const/4 v0, 0x0

    .line 1575
    .local v0, cbNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1577
    .local v1, priority:I
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v2

    return-object v2
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "destAddr"
    .parameter "userData"
    .parameter "statusReportRequested"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    .line 1595
    invoke-static {p0, p2, p1, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 7
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "statusReportRequested"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    const/4 v6, 0x0

    .line 1531
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 1532
    .local v0, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 1533
    iput v6, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 1534
    iput-boolean v6, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 1536
    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1537
    .local v1, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 1541
    const v3, 0xffff

    if-eq p2, v3, :cond_0

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    if-nez p2, :cond_1

    .line 1542
    :cond_0
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSubmitPdu() destPort is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "set userDataHeader to null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    const/4 v1, 0x0

    .line 1548
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1549
    .local v2, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v1, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1550
    iput v6, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1551
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1552
    iput-object p3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1556
    invoke-static {p1, p4, v2, p5, p6}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    return-object v3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 7
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "smsHeader"

    .prologue
    .line 1409
    const/4 v5, 0x0

    .line 1410
    .local v5, cbNumber:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, priority:I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 1412
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "smsHeader"
    .parameter "timeStamp"

    .prologue
    .line 1492
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1493
    :cond_0
    const/4 v1, 0x0

    .line 1499
    :goto_0
    return-object v1

    .line 1496
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1497
    .local v0, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1498
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1499
    invoke-static {p1, p3, v0, p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "smsHeader"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    .line 1458
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1459
    :cond_0
    const/4 v1, 0x0

    .line 1466
    :goto_0
    return-object v1

    .line 1462
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1463
    .local v0, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1464
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1466
    invoke-static {p1, p3, v0, p5, p6}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 7
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    .line 1429
    const/4 v5, 0x0

    .line 1430
    .local v5, cbNumber:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, priority:I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1432
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2
    .parameter "pdu"

    .prologue
    .line 1377
    const-string v0, "CDMA"

    const-string v1, "getTPLayerLengthForPDU: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    const/4 v0, 0x0

    return v0
.end method

.method public static newFromCDMATPDU(Landroid/content/Context;Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;[B)[B
    .locals 26
    .parameter "context"
    .parameter "vms"
    .parameter "part"

    .prologue
    .line 2102
    const-string v21, "CDMA"

    const-string v22, "newFromCDMATPDU(byte[] part,String destinaAddr)"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    new-instance v14, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 2104
    .local v14, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 2105
    .local v8, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 2112
    .local v3, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_0
    new-instance v12, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 2114
    .local v12, inStream:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 2115
    :cond_0
    :goto_0
    invoke-virtual {v12}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v21

    if-lez v21, :cond_b

    .line 2116
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v16

    .line 2117
    .local v16, param:I
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    mul-int/lit8 v13, v21, 0x8

    .line 2118
    .local v13, length:I
    packed-switch v16, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2120
    :pswitch_1
    const/16 v21, 0x10

    move/from16 v0, v21

    if-ge v13, v0, :cond_1

    .line 2121
    const-string v21, "CDMA"

    const-string v22, "Teleservice Identifier has wrong length"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    const/16 v21, 0x0

    .line 2250
    .end local v12           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v13           #length:I
    .end local v16           #param:I
    :goto_1
    return-object v21

    .line 2124
    .restart local v12       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v13       #length:I
    .restart local v16       #param:I
    :cond_1
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    shl-int/lit8 v21, v21, 0x8

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v22

    or-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 2125
    add-int/lit8 v21, v13, -0x10

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2208
    .end local v12           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v13           #length:I
    .end local v16           #param:I
    :catch_0
    move-exception v9

    .line 2209
    .local v9, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v21, "CDMA"

    const-string v22, "BitwiseOutputStream.AccessException"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    const/16 v21, 0x0

    goto :goto_1

    .line 2128
    .end local v9           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    .restart local v12       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v13       #length:I
    .restart local v16       #param:I
    :pswitch_2
    const/16 v21, 0x10

    move/from16 v0, v21

    if-ge v13, v0, :cond_2

    .line 2129
    :try_start_1
    const-string v21, "CDMA"

    const-string v22, "Service Category has wrong length"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    const/16 v21, 0x0

    goto :goto_1

    .line 2132
    :cond_2
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    shl-int/lit8 v21, v21, 0x8

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v22

    or-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 2133
    add-int/lit8 v21, v13, -0x10

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto/16 :goto_0

    .line 2136
    :pswitch_3
    invoke-virtual {v12, v13}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto/16 :goto_0

    .line 2139
    :pswitch_4
    invoke-virtual {v12, v13}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto/16 :goto_0

    .line 2142
    :pswitch_5
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 2143
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 2144
    const/4 v10, 0x4

    .line 2145
    .local v10, fieldBits:I
    const/4 v5, 0x2

    .line 2146
    .local v5, consumedBits:I
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 2147
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 2148
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 2149
    const/16 v10, 0x8

    .line 2150
    add-int/lit8 v5, v5, 0x7

    .line 2152
    :cond_3
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 2153
    add-int/lit8 v5, v5, 0x8

    .line 2154
    sub-int v17, v13, v5

    .line 2155
    .local v17, remainingBits:I
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    mul-int v6, v21, v10

    .line 2156
    .local v6, dataBits:I
    sub-int v15, v17, v6

    .line 2157
    .local v15, paddingBits:I
    move/from16 v0, v17

    if-ge v0, v6, :cond_4

    .line 2158
    const-string v21, "CDMA"

    const-string v22, "error decoding Originating Address"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 2161
    :cond_4
    invoke-virtual {v12, v6}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 2162
    invoke-virtual {v12, v15}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2163
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v21, v0
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 2167
    :try_start_2
    new-instance v21, Ljava/lang/String;

    iget-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    iget-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const-string v25, "US-ASCII"

    invoke-direct/range {v21 .. v25}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 2169
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "destAddress is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    iget v0, v3, Lcom/android/internal/telephony/SmsAddress;->ton:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    iget-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2b

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    if-eqz v21, :cond_0

    .line 2172
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "+"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 2173
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "destAddress is + "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2175
    :catch_1
    move-exception v9

    .line 2176
    .local v9, ex:Ljava/io/UnsupportedEncodingException;
    :try_start_3
    const-string v21, "CDMA"

    const-string v22, "error decoding Originating Address"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 2180
    .end local v9           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_5
    new-instance v18, Ljava/lang/StringBuffer;

    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2181
    .local v18, strBuf:Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_a

    .line 2182
    iget-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v21, v0

    div-int/lit8 v22, v11, 0x2

    aget-byte v21, v21, v22

    rem-int/lit8 v22, v11, 0x2

    mul-int/lit8 v22, v22, 0x4

    rsub-int/lit8 v22, v22, 0x4

    ushr-int v21, v21, v22

    and-int/lit8 v20, v21, 0xf

    .line 2183
    .local v20, val:I
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_6

    const/16 v21, 0xa

    invoke-static/range {v20 .. v21}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2181
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2184
    :cond_6
    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    const/16 v21, 0x30

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 2185
    :cond_7
    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    const/16 v21, 0x2a

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 2186
    :cond_8
    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    const/16 v21, 0x23

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 2188
    :cond_9
    const-string v21, "CDMA"

    const-string v22, "error decoding Dtmf Sms Address"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 2192
    .end local v20           #val:I
    :cond_a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    goto/16 :goto_0

    .line 2196
    .end local v5           #consumedBits:I
    .end local v6           #dataBits:I
    .end local v10           #fieldBits:I
    .end local v11           #i:I
    .end local v15           #paddingBits:I
    .end local v17           #remainingBits:I
    .end local v18           #strBuf:Ljava/lang/StringBuffer;
    :pswitch_6
    invoke-virtual {v12, v13}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto/16 :goto_0

    .line 2199
    :pswitch_7
    invoke-virtual {v12, v13}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto/16 :goto_0

    .line 2202
    :pswitch_8
    invoke-virtual {v12, v13}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B
    :try_end_3
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 2215
    .end local v13           #length:I
    .end local v16           #param:I
    :cond_b
    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    if-eqz v3, :cond_c

    .line 2216
    iget-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->filterDestAddr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2217
    .local v19, temp:Ljava/lang/String;
    if-eqz v19, :cond_c

    iget-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 2218
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v3

    .line 2222
    .end local v19           #temp:Ljava/lang/String;
    :cond_c
    iput-object v3, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 2225
    :try_start_4
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v21, 0x64

    move/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2226
    .local v4, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2227
    .local v7, dos:Ljava/io/DataOutputStream;
    iget v0, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2228
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2229
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2230
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 2231
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 2232
    iget v0, v3, Lcom/android/internal/telephony/SmsAddress;->ton:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 2233
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 2234
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 2235
    iget-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2237
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 2238
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 2239
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 2240
    iget-object v0, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 2241
    iget-object v0, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 2242
    iget-object v0, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-object v0, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2244
    :cond_d
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 2245
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v21

    goto/16 :goto_1

    .line 2246
    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #dos:Ljava/io/DataOutputStream;
    :catch_2
    move-exception v9

    .line 2247
    .local v9, ex:Ljava/io/IOException;
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "creating newFromCDMATPDU SubmitPdu failed: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 2118
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

.method public static newFromCDMATPDU([B)[B
    .locals 1
    .parameter "part"

    .prologue
    const/4 v0, 0x0

    .line 2095
    invoke-static {v0, v0, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCDMATPDU(Landroid/content/Context;Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 14
    .parameter "p"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1204
    new-instance v7, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 1205
    .local v7, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1206
    .local v5, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1207
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 1214
    .local v8, subaddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1217
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v10

    if-eqz v10, :cond_2

    iget v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-eqz v10, :cond_0

    const/high16 v10, 0x5

    iget v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-ne v10, v11, :cond_2

    .line 1220
    :cond_0
    iput v12, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1230
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 1233
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1234
    .local v1, addressDigitMode:I
    and-int/lit16 v10, v1, 0xff

    int-to-byte v10, v10

    iput v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1235
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    iput v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 1236
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 1237
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    iput v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 1238
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 1239
    .local v2, count:B
    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1240
    new-array v4, v2, [B

    .line 1242
    .local v4, data:[B
    const/4 v6, 0x0

    .local v6, index:I
    :goto_1
    if-ge v6, v2, :cond_4

    .line 1243
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v10

    aput-byte v10, v4, v6

    .line 1246
    if-nez v1, :cond_1

    .line 1247
    aget-byte v10, v4, v6

    invoke-direct {v7, v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v10

    aput-byte v10, v4, v6

    .line 1242
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1223
    .end local v1           #addressDigitMode:I
    .end local v2           #count:B
    .end local v4           #data:[B
    .end local v6           #index:I
    :cond_2
    iget v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-nez v10, :cond_3

    .line 1225
    const/4 v10, 0x2

    iput v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .line 1227
    :cond_3
    iput v13, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .line 1251
    .restart local v1       #addressDigitMode:I
    .restart local v2       #count:B
    .restart local v4       #data:[B
    .restart local v6       #index:I
    :cond_4
    iput-object v4, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 1253
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 1254
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v10

    iput-byte v10, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 1255
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 1257
    if-gez v2, :cond_5

    .line 1258
    const/4 v2, 0x0

    .line 1263
    :cond_5
    new-array v4, v2, [B

    .line 1265
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_6

    .line 1266
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v10

    aput-byte v10, v4, v6

    .line 1265
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1269
    :cond_6
    iput-object v4, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 1279
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1280
    .local v3, countInt:I
    if-lez v3, :cond_8

    .line 1281
    new-array v4, v3, [B

    .line 1283
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_7

    .line 1284
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v10

    aput-byte v10, v4, v6

    .line 1283
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1286
    :cond_7
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 1293
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isNBPCDEnable()Z

    move-result v10

    if-eqz v10, :cond_9

    iget v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v10, v12, :cond_9

    iget v10, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-ne v10, v12, :cond_9

    iget-object v10, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v10, v10, v13

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_9

    .line 1298
    const-string v10, "SmsMessage for NBPCD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PCD formatted address. Converting to ASCII:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object v10, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-static {v10}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v9

    .line 1302
    .local v9, temp:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1303
    invoke-static {v9}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 1305
    const-string v10, "SmsMessage for NBPCD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PCD formatted address used  getAsciiBytes Adding a +:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1309
    const-string v10, "SmsMessage for NBPCD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Increasing number of digits"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    .end local v9           #temp:Ljava/lang/String;
    :cond_9
    iput-object v0, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1314
    iput-object v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 1315
    iput-object v0, v7, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1316
    iput-object v5, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1319
    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    .line 1321
    return-object v7
.end method

.method public static parseAckMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)V
    .locals 7
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;,
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 408
    const/4 v1, 0x0

    .line 410
    .local v1, foundParamMask:I
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    if-lez v4, :cond_2

    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, decodeSuccess:Z
    const/16 v4, 0x8

    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    .line 413
    .local v2, paramId:I
    const/4 v4, 0x1

    shl-int v3, v4, v2

    .line 414
    .local v3, paramIdBit:I
    and-int v4, v1, v3

    if-eqz v4, :cond_1

    .line 415
    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal duplicate parameter ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 418
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 426
    :pswitch_0
    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported ACK msg parameter ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 420
    :pswitch_1
    const/4 v4, 0x0

    invoke-static {p0, p1, p2, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeSubAddress(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;Z)Z

    .line 429
    :goto_1
    if-eqz v0, :cond_0

    or-int/2addr v1, v3

    goto :goto_0

    .line 423
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeCauseCodes(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v0

    .line 424
    goto :goto_1

    .line 432
    .end local v0           #decodeSuccess:Z
    .end local v2           #paramId:I
    .end local v3           #paramIdBit:I
    :cond_2
    and-int/lit16 v4, v1, 0x80

    if-nez v4, :cond_3

    .line 433
    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    const-string v5, "missing CAUSE_CODES subparam"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 435
    :cond_3
    return-void

    .line 418
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static parseBroadcastMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)V
    .locals 7
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;,
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 444
    const/4 v1, 0x0

    .line 446
    .local v1, foundParamMask:I
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    if-lez v4, :cond_2

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, decodeSuccess:Z
    const/16 v4, 0x8

    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    .line 449
    .local v2, paramId:I
    const/4 v4, 0x1

    shl-int v3, v4, v2

    .line 450
    .local v3, paramIdBit:I
    and-int v4, v1, v3

    if-eqz v4, :cond_1

    .line 451
    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal duplicate parameter ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 454
    :cond_1
    sparse-switch v2, :sswitch_data_0

    .line 462
    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported Boradcast msg parameter ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 456
    :sswitch_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeServiceCategory(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v0

    .line 465
    :goto_1
    if-eqz v0, :cond_0

    or-int/2addr v1, v3

    goto :goto_0

    .line 459
    :sswitch_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeBearerData(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v0

    .line 460
    goto :goto_1

    .line 468
    .end local v0           #decodeSuccess:Z
    .end local v2           #paramId:I
    .end local v3           #paramIdBit:I
    :cond_2
    and-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_3

    .line 469
    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    const-string v5, "missing SERVICE_CATEGORY subparam"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 471
    :cond_3
    return-void

    .line 454
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public static parsePTPMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)V
    .locals 7
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;,
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 480
    const/4 v1, 0x0

    .line 482
    .local v1, foundParamMask:I
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    if-lez v4, :cond_2

    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, decodeSuccess:Z
    const/16 v4, 0x8

    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    .line 485
    .local v2, paramId:I
    shl-int v3, v5, v2

    .line 487
    .local v3, paramIdBit:I
    and-int v4, v1, v3

    if-eqz v4, :cond_1

    .line 488
    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!illegal duplicate parameter ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 491
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 511
    :pswitch_0
    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported PTP msg parameter ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 493
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeTeleserviceID(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v0

    .line 514
    :goto_1
    if-eqz v0, :cond_0

    or-int/2addr v1, v3

    goto :goto_0

    .line 496
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeServiceCategory(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v0

    .line 497
    goto :goto_1

    .line 499
    :pswitch_3
    invoke-static {p0, p1, p2, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeAddress(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;Z)Z

    move-result v0

    .line 500
    goto :goto_1

    .line 502
    :pswitch_4
    invoke-static {p0, p1, p2, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeSubAddress(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;Z)Z

    move-result v0

    .line 503
    goto :goto_1

    .line 505
    :pswitch_5
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeReplyOption(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v0

    .line 506
    goto :goto_1

    .line 508
    :pswitch_6
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeBearerData(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v0

    .line 509
    goto :goto_1

    .line 517
    .end local v0           #decodeSuccess:Z
    .end local v2           #paramId:I
    .end local v3           #paramIdBit:I
    :cond_2
    and-int/lit8 v4, v1, 0x4

    if-nez v4, :cond_3

    .line 518
    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    const-string v5, "missing ORIGINATING_ADDRESS subparam"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 520
    :cond_3
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_4

    .line 521
    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    const-string v5, "missing TELESERVICE_ID subparam"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 523
    :cond_4
    return-void

    .line 491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private parsePdu([B)V
    .locals 10
    .parameter "pdu"

    .prologue
    .line 1722
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1723
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1726
    .local v3, dis:Ljava/io/DataInputStream;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1727
    .local v4, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1730
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1731
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1732
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 1734
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1735
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 1736
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 1737
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 1739
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 1740
    .local v6, length:I
    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1741
    new-array v7, v6, [B

    iput-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 1742
    iget-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v6}, Ljava/io/DataInputStream;->read([BII)I

    .line 1744
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 1746
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 1747
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 1748
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 1751
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1752
    .local v2, bearerDataLength:I
    new-array v7, v2, [B

    iput-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 1753
    iget-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v2}, Ljava/io/DataInputStream;->read([BII)I

    .line 1754
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1760
    .end local v2           #bearerDataLength:I
    .end local v6           #length:I
    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1761
    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1762
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1763
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 1765
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 1768
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "KDDI"

    const-string v8, "ro.cdma.home.operator.alpha"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1770
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v7, :cond_1

    .line 1771
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1772
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1781
    :cond_0
    :goto_1
    return-void

    .line 1755
    :catch_0
    move-exception v5

    .line 1756
    .local v5, ex:Ljava/lang/Exception;
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1774
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1775
    .restart local v0       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const-string v7, ""

    iput-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 1776
    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1777
    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    goto :goto_1
.end method

.method private parsePduFromEfRecord([B)V
    .locals 30
    .parameter "pdu"

    .prologue
    .line 1787
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1788
    .local v7, bais:Ljava/io/ByteArrayInputStream;
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1789
    .local v10, dis:Ljava/io/DataInputStream;
    new-instance v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v11}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1790
    .local v11, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 v3, 0x0

    .line 1791
    .local v3, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/16 v21, 0x0

    .line 1794
    .local v21, subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    const/4 v13, 0x0

    .line 1796
    .local v13, foundParamMask:I
    :try_start_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    move-result v27

    move/from16 v0, v27

    iput v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v22, v21

    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .local v22, subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    move-object v4, v3

    .line 1798
    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .local v4, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/DataInputStream;->available()I

    move-result v27

    if-lez v27, :cond_b

    .line 1799
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    move-result v18

    .line 1801
    .local v18, parameterId:I
    const/16 v27, 0x1

    shl-int v16, v27, v18

    .line 1802
    .local v16, paramIdBit:I
    and-int v27, v13, v16

    if-eqz v27, :cond_0

    .line 1803
    new-instance v27, Ljava/lang/Exception;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "illegal duplicate parameter ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1964
    .end local v16           #paramIdBit:I
    .end local v18           #parameterId:I
    :catch_0
    move-exception v12

    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    move-object v3, v4

    .line 1965
    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .local v12, ex:Ljava/lang/Exception;
    :goto_1
    const-string v27, "CDMA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parsePduFromEfRecord: conversion from pdu to SmsMessage failed"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1968
    new-instance v27, Ljava/lang/IllegalArgumentException;

    const-string v28, "SMS Envelope Parser failed"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 1805
    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v12           #ex:Ljava/lang/Exception;
    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v16       #paramIdBit:I
    .restart local v18       #parameterId:I
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :cond_0
    or-int v13, v13, v16

    .line 1807
    :try_start_2
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    move-result v19

    .line 1808
    .local v19, parameterLen:I
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 1810
    .local v17, parameterData:[B
    packed-switch v18, :pswitch_data_0

    .line 1932
    new-instance v27, Ljava/lang/Exception;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "unsupported parameterId ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v27

    .line 1817
    :pswitch_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v27

    move/from16 v0, v27

    iput v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1818
    const-string v27, "CDMA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "teleservice = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    move-object v3, v4

    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :goto_2
    move-object/from16 v22, v21

    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    move-object v4, v3

    .line 1934
    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto/16 :goto_0

    .line 1825
    :pswitch_1
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v27

    move/from16 v0, v27

    iput v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    move-object v3, v4

    .line 1826
    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto :goto_2

    .line 1829
    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :pswitch_2
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    .line 1830
    new-instance v5, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1831
    .local v5, addrBis:Lcom/android/internal/util/BitwiseInputStream;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1832
    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/16 v27, 0x1

    :try_start_3
    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1833
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 1834
    const/4 v15, 0x0

    .line 1835
    .local v15, numberType:I
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 1836
    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v15

    .line 1837
    iput v15, v3, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 1839
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v27, v0

    if-nez v27, :cond_1

    .line 1840
    const/16 v27, 0x4

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 1843
    :cond_1
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1845
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v9, v0, [B

    .line 1846
    .local v9, data:[B
    const/4 v6, 0x0

    .line 1848
    .local v6, b:B
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v27, v0

    if-nez v27, :cond_2

    .line 1850
    const/4 v14, 0x0

    .local v14, index:I
    :goto_3
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_4

    .line 1851
    const/16 v27, 0x4

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v27

    and-int/lit8 v27, v27, 0xf

    move/from16 v0, v27

    int-to-byte v6, v0

    .line 1854
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v27

    aput-byte v27, v9, v14

    .line 1850
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1856
    .end local v14           #index:I
    :cond_2
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 1857
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v27, v0

    if-nez v27, :cond_3

    .line 1858
    const/4 v14, 0x0

    .restart local v14       #index:I
    :goto_4
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_4

    .line 1859
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v6, v0

    .line 1860
    aput-byte v6, v9, v14

    .line 1858
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 1863
    .end local v14           #index:I
    :cond_3
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 1864
    const/16 v27, 0x2

    move/from16 v0, v27

    if-ne v15, v0, :cond_6

    .line 1865
    const-string v27, "CDMA"

    const-string v28, "TODO: Originating Addr is email id"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :cond_4
    :goto_5
    iput-object v9, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 1877
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isNBPCDEnable()Z

    move-result v27

    if-eqz v27, :cond_5

    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    iget v0, v3, Lcom/android/internal/telephony/SmsAddress;->ton:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    iget-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-byte v27, v27, v28

    const/16 v28, 0x2b

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_5

    .line 1881
    iget-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v26

    .line 1882
    .local v26, temp:Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "+"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1883
    invoke-static/range {v26 .. v26}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 1884
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1886
    .end local v26           #temp:Ljava/lang/String;
    :cond_5
    iget-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 1888
    const-string v27, "CDMA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Originating Addr="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    const/16 v27, 0x2

    move/from16 v0, v27

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1892
    iput-object v3, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    goto/16 :goto_2

    .line 1867
    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :cond_6
    const-string v27, "CDMA"

    const-string v28, "TODO: Originating Addr is data network address"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1964
    .end local v6           #b:B
    .end local v9           #data:[B
    .end local v15           #numberType:I
    :catch_1
    move-exception v12

    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    goto/16 :goto_1

    .line 1870
    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v6       #b:B
    .restart local v9       #data:[B
    .restart local v15       #numberType:I
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :cond_7
    const-string v27, "CDMA"

    const-string v28, "Originating Addr is of incorrect type"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1873
    :cond_8
    const-string v27, "CDMA"

    const-string v28, "Incorrect Digit mode"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1894
    :cond_9
    iput-object v3, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v21, v22

    .line 1897
    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    goto/16 :goto_2

    .line 1900
    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v5           #addrBis:Lcom/android/internal/util/BitwiseInputStream;
    .end local v6           #b:B
    .end local v9           #data:[B
    .end local v15           #numberType:I
    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :pswitch_3
    const/16 v27, 0x0

    :try_start_4
    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    .line 1901
    new-instance v23, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1902
    .local v23, subAddrBis:Lcom/android/internal/util/BitwiseInputStream;
    new-instance v21, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1903
    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    const/16 v27, 0x3

    :try_start_5
    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 1904
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v27

    const/16 v28, 0x0

    aget-byte v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput-byte v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 1905
    const/16 v27, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v24

    .line 1906
    .local v24, subAddrLen:I
    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .line 1907
    .local v25, subdata:[B
    const/4 v14, 0x0

    .restart local v14       #index:I
    :goto_6
    move/from16 v0, v24

    if-ge v14, v0, :cond_a

    .line 1908
    const/16 v27, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v6, v0

    .line 1910
    .restart local v6       #b:B
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v27

    aput-byte v27, v25, v14

    .line 1907
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1912
    .end local v6           #b:B
    :cond_a
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v3, v4

    .line 1913
    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto/16 :goto_2

    .line 1915
    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v14           #index:I
    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local v23           #subAddrBis:Lcom/android/internal/util/BitwiseInputStream;
    .end local v24           #subAddrLen:I
    .end local v25           #subdata:[B
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :pswitch_4
    const/16 v27, 0x0

    :try_start_6
    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    .line 1916
    new-instance v20, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1917
    .local v20, replyOptBis:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v27, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    move-object v3, v4

    .line 1918
    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto/16 :goto_2

    .line 1920
    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v20           #replyOptBis:Lcom/android/internal/util/BitwiseInputStream;
    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :pswitch_5
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    .line 1921
    new-instance v8, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1922
    .local v8, ccBis:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v27, 0x6

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v27

    const/16 v28, 0x0

    aget-byte v27, v27, v28

    move/from16 v0, v27

    iput-byte v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 1923
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v27

    const/16 v28, 0x0

    aget-byte v27, v27, v28

    move/from16 v0, v27

    iput-byte v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 1924
    iget-byte v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    move/from16 v27, v0

    if-eqz v27, :cond_11

    .line 1925
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v27

    const/16 v28, 0x0

    aget-byte v27, v27, v28

    move/from16 v0, v27

    iput-byte v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    move-object v3, v4

    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto/16 :goto_2

    .line 1928
    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v8           #ccBis:Lcom/android/internal/util/BitwiseInputStream;
    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :pswitch_6
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    .line 1929
    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    move-object v3, v4

    .line 1930
    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto/16 :goto_2

    .line 1935
    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v16           #paramIdBit:I
    .end local v17           #parameterData:[B
    .end local v18           #parameterId:I
    .end local v19           #parameterLen:I
    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :cond_b
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1936
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 1939
    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_1

    .line 1960
    new-instance v27, Ljava/lang/Exception;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "unsupported SMS Type ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v27

    .line 1941
    :pswitch_7
    and-int/lit8 v27, v13, 0x1

    if-nez v27, :cond_c

    .line 1942
    new-instance v27, Ljava/lang/Exception;

    const-string v28, "missing TELESERVICE_IDENTIFIER parameter"

    invoke-direct/range {v27 .. v28}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v27

    .line 1944
    :cond_c
    and-int/lit8 v27, v13, 0x4

    if-nez v27, :cond_d

    and-int/lit8 v27, v13, 0x10

    if-nez v27, :cond_d

    .line 1946
    new-instance v27, Ljava/lang/Exception;

    const-string v28, "missing ADDRESS parameter"

    invoke-direct/range {v27 .. v28}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v27

    .line 1950
    :pswitch_8
    and-int/lit8 v27, v13, 0x2

    if-nez v27, :cond_d

    .line 1951
    new-instance v27, Ljava/lang/Exception;

    const-string v28, "missing SERVICE_CATEGORY parameter"

    invoke-direct/range {v27 .. v28}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v27

    .line 1955
    :pswitch_9
    and-int/lit16 v0, v13, 0x80

    move/from16 v27, v0

    if-nez v27, :cond_d

    .line 1956
    new-instance v27, Ljava/lang/Exception;

    const-string v28, "missing CAUSE_CODES parameter"

    invoke-direct/range {v27 .. v28}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1973
    :cond_d
    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 1974
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-object/from16 v27, v0

    if-eqz v27, :cond_e

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1979
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-object/from16 v27, v0

    if-eqz v27, :cond_f

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1983
    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 1985
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 1988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    .line 1989
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    .line 1992
    :cond_10
    return-void

    .line 1964
    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :catch_2
    move-exception v12

    goto/16 :goto_1

    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v16       #paramIdBit:I
    .restart local v17       #parameterData:[B
    .restart local v18       #parameterId:I
    .restart local v19       #parameterLen:I
    .restart local v23       #subAddrBis:Lcom/android/internal/util/BitwiseInputStream;
    :catch_3
    move-exception v12

    move-object v3, v4

    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto/16 :goto_1

    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local v23           #subAddrBis:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v8       #ccBis:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :cond_11
    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    move-object v3, v4

    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto/16 :goto_2

    .line 1810
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1939
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static privateGetDeliverEnv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .locals 9
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 2679
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2712
    :cond_0
    :goto_0
    return-object v2

    .line 2682
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v3

    .line 2683
    .local v3, origAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-eqz v3, :cond_0

    .line 2685
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 2686
    .local v0, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v7, 0x1

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 2687
    iput v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 2689
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 2690
    .local v6, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 2691
    iput-object v2, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 2692
    iput-object v6, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 2693
    iput-boolean v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 2695
    if-eqz p3, :cond_2

    .line 2696
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    .line 2697
    .local v5, ts:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    invoke-virtual {v5, p3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->set(Landroid/text/format/Time;)V

    .line 2698
    iput-object v5, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 2701
    .end local v5           #ts:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    :cond_2
    const/16 v4, 0x1002

    .line 2703
    .local v4, teleservice:I
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v1

    .line 2704
    .local v1, encodedBearerData:[B
    if-eqz v1, :cond_0

    .line 2706
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 2707
    .local v2, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iput v8, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 2708
    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 2709
    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 2710
    iput-object v1, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    goto :goto_0
.end method

.method private static privateGetSubmitEnv(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .locals 11
    .parameter "destAddrStr"
    .parameter "statusReportRequested"
    .parameter "userData"
    .parameter "timeStamp"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2449
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v1

    .line 2450
    .local v1, destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v1, :cond_1

    .line 2492
    :cond_0
    :goto_0
    return-object v3

    .line 2452
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 2453
    .local v0, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 2455
    if-eqz p3, :cond_2

    .line 2456
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    .line 2457
    .local v5, ts:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    invoke-virtual {v5, p3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->set(Landroid/text/format/Time;)V

    .line 2458
    iput-object v5, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 2461
    .end local v5           #ts:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 2463
    iput-boolean p1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 2464
    iput-boolean v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 2465
    iput-boolean v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 2466
    iput-boolean v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 2468
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 2469
    if-eqz p2, :cond_5

    .line 2470
    iget-object v6, p2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v6, :cond_4

    move v6, v7

    :goto_1
    iput-boolean v6, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 2475
    :goto_2
    iget-boolean v6, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v6, :cond_6

    const/16 v4, 0x1005

    .line 2478
    .local v4, teleservice:I
    :goto_3
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v2

    .line 2479
    .local v2, encodedBearerData:[B
    if-eqz v2, :cond_0

    .line 2480
    const-string v6, "CDMA:SMS"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2481
    const-string v6, "CDMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MO (encoded) BearerData = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    const-string v6, "CDMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MO raw BearerData = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 2486
    .local v3, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iput v8, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 2487
    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 2488
    iput-object v1, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 2489
    iput v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 2490
    iput-object v2, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    goto/16 :goto_0

    .end local v2           #encodedBearerData:[B
    .end local v3           #envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v4           #teleservice:I
    :cond_4
    move v6, v8

    .line 2470
    goto :goto_1

    .line 2472
    :cond_5
    iput-boolean v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    goto :goto_2

    .line 2475
    :cond_6
    const/16 v4, 0x1002

    goto :goto_3
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "destAddrStr"
    .parameter "statusReportRequested"
    .parameter "userData"

    .prologue
    .line 2304
    const/4 v0, 0x0

    .line 2305
    .local v0, cbNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2307
    .local v1, priority:I
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v2

    return-object v2
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 4
    .parameter "destAddrStr"
    .parameter "statusReportRequested"
    .parameter "userData"
    .parameter "timeStamp"

    .prologue
    const/4 v3, 0x0

    .line 2425
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitEnv(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v1

    .line 2427
    .local v1, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->writePdu(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)[B

    move-result-object v0

    .line 2428
    .local v0, encodedMsg:[B
    if-nez v0, :cond_0

    move-object v2, v3

    .line 2434
    :goto_0
    return-object v2

    .line 2430
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 2431
    .local v2, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    iput-object v0, v2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    .line 2432
    iput-object v3, v2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 14
    .parameter "destAddrStr"
    .parameter "statusReportRequested"
    .parameter "userData"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    .line 2333
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v3

    .line 2336
    .local v3, destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 2337
    .local v8, mSmsCallbackAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v3, :cond_0

    const/4 v9, 0x0

    .line 2418
    :goto_0
    return-object v9

    .line 2339
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 2340
    .local v2, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v11, 0x2

    iput v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 2342
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v11

    iput v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 2344
    iput-boolean p1, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 2345
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 2346
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 2347
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 2352
    const/4 v11, 0x1

    iput-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 2354
    if-eqz p3, :cond_2

    .line 2355
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v11

    iput-object v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 2360
    :goto_1
    move/from16 v0, p4

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 2363
    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 2365
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v5

    .line 2366
    .local v5, encodedBearerData:[B
    const-string v11, "CDMA:SMS"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2367
    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MO (encoded) BearerData = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MO raw BearerData = \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    :cond_1
    if-nez v5, :cond_3

    const/4 v9, 0x0

    goto :goto_0

    .line 2357
    .end local v5           #encodedBearerData:[B
    :cond_2
    const-string v11, "CDMA"

    const-string v12, "sData.getCallbackNumber cbNumber is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2372
    .restart local v5       #encodedBearerData:[B
    :cond_3
    iget-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v11, :cond_4

    const/16 v10, 0x1005

    .line 2375
    .local v10, teleservice:I
    :goto_2
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 2376
    .local v6, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 v11, 0x0

    iput v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 2377
    iput v10, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 2378
    iput-object v3, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 2379
    const/4 v11, 0x1

    iput v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 2380
    iput-object v5, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 2392
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0x64

    invoke-direct {v1, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2393
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2394
    .local v4, dos:Ljava/io/DataOutputStream;
    iget v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2395
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2396
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2397
    iget v11, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 2398
    iget v11, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 2399
    iget v11, v3, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 2400
    iget v11, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 2401
    iget v11, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 2402
    iget-object v11, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v12, 0x0

    iget-object v13, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v13, v13

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2404
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 2405
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 2406
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 2407
    array-length v11, v5

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 2408
    const/4 v11, 0x0

    array-length v12, v5

    invoke-virtual {v4, v5, v11, v12}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2409
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 2411
    new-instance v9, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 2412
    .local v9, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iput-object v11, v9, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    .line 2413
    const/4 v11, 0x0

    iput-object v11, v9, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2415
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #dos:Ljava/io/DataOutputStream;
    .end local v9           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v7

    .line 2416
    .local v7, ex:Ljava/io/IOException;
    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "creating SubmitPdu failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2372
    .end local v6           #envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v7           #ex:Ljava/io/IOException;
    .end local v10           #teleservice:I
    :cond_4
    const/16 v10, 0x1002

    goto/16 :goto_2
.end method

.method public static smscByteToString([B)Ljava/lang/String;
    .locals 7
    .parameter "smsc"

    .prologue
    .line 667
    if-eqz p0, :cond_1

    .line 669
    const/4 v0, 0x0

    .line 672
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    aget-byte v2, p0, v0

    .line 673
    .local v2, len:I
    if-nez v2, :cond_0

    .line 674
    const/4 v3, 0x0

    .line 687
    .end local v1           #index:I
    .end local v2           #len:I
    :goto_0
    return-object v3

    .line 678
    .restart local v1       #index:I
    .restart local v2       #len:I
    :cond_0
    :try_start_0
    invoke-static {p0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, ret:Ljava/lang/String;
    goto :goto_0

    .line 680
    .end local v3           #ret:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 681
    .local v4, tr:Ljava/lang/RuntimeException;
    const-string v5, "CDMA"

    const-string v6, "invalid SC address: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 682
    const/4 v3, 0x0

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0

    .line 687
    .end local v1           #index:I
    .end local v2           #len:I
    .end local v3           #ret:Ljava/lang/String;
    .end local v4           #tr:Ljava/lang/RuntimeException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static writePdu(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)[B
    .locals 8
    .parameter "envelope"

    .prologue
    const/4 v4, 0x0

    .line 2720
    if-nez p0, :cond_1

    .line 2756
    :cond_0
    :goto_0
    return-object v4

    .line 2723
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v5, :cond_2

    .line 2724
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 2732
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :goto_1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x64

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2733
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2734
    .local v2, dos:Ljava/io/DataOutputStream;
    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2735
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2736
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2737
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 2738
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 2739
    iget v5, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 2740
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 2741
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 2742
    iget-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2744
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 2745
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 2746
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 2747
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 2748
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2749
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 2750
    const-string v5, "encode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BearerData.length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    const-string v5, "encode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BearerData = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v7}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .line 2725
    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #dos:Ljava/io/DataOutputStream;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v5, :cond_0

    .line 2726
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .restart local v0       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto/16 :goto_1

    .line 2753
    :catch_0
    move-exception v3

    .line 2754
    .local v3, ex:Ljava/io/IOException;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "creating Pdu failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method protected addressConvert()V
    .locals 4

    .prologue
    .line 2548
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 2550
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iget v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-nez v2, :cond_0

    .line 2551
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    iget v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v1, v2, :cond_0

    .line 2552
    iget-object v2, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    iget-object v3, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v3, v3, v1

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v3

    aput-byte v3, v2, v1

    .line 2551
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2555
    .end local v1           #index:I
    :cond_0
    return-void
.end method

.method public getCallbackNumberAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v0, :cond_0

    .line 2642
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2644
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getIncomingSmsFingerprint()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2786
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2788
    .local v0, output:Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2789
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2790
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2792
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    if-eqz v1, :cond_0

    .line 2793
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2798
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 2613
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    return v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-nez v0, :cond_0

    .line 2260
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    .line 2267
    :goto_0
    return-object v0

    .line 2264
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    if-nez v0, :cond_1

    .line 2265
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 2267
    :cond_1
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 2622
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    return v0
.end method

.method getNumOfVoicemails()I
    .locals 1

    .prologue
    .line 2593
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 2

    .prologue
    .line 1604
    const-string v0, "CDMA"

    const-string v1, "getProtocolIdentifier: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    const/4 v0, 0x0

    return v0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2765
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v0, :cond_0

    .line 2768
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    .line 2772
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1655
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method getTeleService()I
    .locals 1

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 2

    .prologue
    .line 1622
    const-string v0, "CDMA"

    const-string v1, "isCphsMwiMessage: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    const/4 v0, 0x0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 1613
    const-string v0, "CDMA"

    const-string v1, "isReplace: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    const/4 v0, 0x0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 2

    .prologue
    .line 1675
    const-string v0, "CDMA"

    const-string v1, "isReplyPathPresent: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    const/4 v0, 0x0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1662
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-nez v1, :cond_1

    .line 1668
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method kddiGetMessageEncoding()I
    .locals 1

    .prologue
    .line 2809
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    return v0
.end method

.method protected parseSms()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 2000
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2001
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 2002
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-eqz v0, :cond_0

    .line 2003
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 2088
    :cond_0
    :goto_0
    return-void

    .line 2011
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 2012
    const-string v0, "CDMA:SMS"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2013
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MT raw BearerData = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MT (decoded) BearerData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 2021
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "KDDI"

    const-string v1, "ro.cdma.home.operator.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2023
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsConvert;->kddiFormatSlamdownMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 2027
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v0, :cond_4

    .line 2028
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    .line 2029
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 2030
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    .line 2033
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_5

    .line 2034
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 2039
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v0, :cond_6

    .line 2040
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 2046
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 2062
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-nez v0, :cond_9

    .line 2063
    const-string v1, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELIVERY_ACK message without msgStatus ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    if-nez v0, :cond_8

    const-string v0, "also missing"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " userData)."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    iput v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 2082
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 2084
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseMessageBody()V

    goto/16 :goto_0

    .line 2063
    :cond_8
    const-string v0, "does have"

    goto :goto_1

    .line 2072
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 2073
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_2

    .line 2076
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-eq v0, v4, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-eq v0, v3, :cond_7

    .line 2078
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2085
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method

.method protected setEmpty()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/android/internal/telephony/SmsMessageBase;->setEmpty()V

    .line 187
    const-string v0, "CDMA"

    const-string v1, "nothing to do for gsm message in addition to the memebers of base class"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method
