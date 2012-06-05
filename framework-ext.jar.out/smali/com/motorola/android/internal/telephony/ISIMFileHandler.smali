.class public final Lcom/motorola/android/internal/telephony/ISIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "ISIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field protected static final EVENT_ISIM_AUTH_DONE:I = 0xc

.field protected static final EVENT_LOGICAL_CHANNEL_OPEN_DONE:I = 0xb

.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 87
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 88
    return-void
.end method

.method private sendIccOemCCHOCommand([BLandroid/os/Message;)V
    .locals 6
    .parameter "aid"
    .parameter "msg"

    .prologue
    const/4 v4, 0x4

    .line 509
    new-array v3, v4, [B

    fill-array-data v3, :array_0

    .line 511
    .local v3, header:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 512
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 514
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v4, 0x0

    const/4 v5, 0x4

    :try_start_0
    invoke-virtual {v1, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 515
    array-length v4, p1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 516
    array-length v4, p1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 517
    const/4 v4, 0x0

    array-length v5, p1

    invoke-virtual {v1, p1, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 524
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v2

    .line 519
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not build the OEM RAW command for ISIM CCHO"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :array_0
    .array-data 0x1
        0x2t
        0xat
        0x0t
        0x6t
    .end array-data
.end method

.method private sendIccOemIOCommand(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "sessionid"
    .parameter "cmd"
    .parameter "fileid"
    .parameter "filepath"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "msg"

    .prologue
    .line 529
    const/16 v6, 0x8

    new-array v5, v6, [B

    fill-array-data v5, :array_0

    .line 532
    .local v5, header:[B
    const/16 v6, 0x10

    invoke-static {p4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 534
    .local v4, fpath:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 535
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 537
    .local v2, dos:Ljava/io/DataOutputStream;
    const/4 v6, 0x0

    const/16 v7, 0x8

    :try_start_0
    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 538
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 539
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 540
    shr-int/lit8 v6, p3, 0x8

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 541
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 542
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 543
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 544
    invoke-virtual {v2, p5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 545
    invoke-virtual {v2, p6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 546
    invoke-virtual {v2, p7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 547
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 548
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    move-object/from16 v0, p10

    invoke-virtual {v6, v7, v0}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 555
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v3

    .line 550
    .local v3, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not build the OEM RAW command for ISIM CRLA"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 529
    nop

    :array_0
    .array-data 0x1
        0x2t
        0xat
        0x0t
        0x9t
        0x0t
        0x0t
        0x0t
        0x11t
    .end array-data
.end method

.method private sendIccOemIsimAuthCommand(I[BI[BLandroid/os/Message;)V
    .locals 6
    .parameter "rand_len"
    .parameter "rand"
    .parameter "autn_len"
    .parameter "autn"
    .parameter "msg"

    .prologue
    const/4 v4, 0x4

    .line 560
    new-array v3, v4, [B

    fill-array-data v3, :array_0

    .line 562
    .local v3, header:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 563
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 565
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v4, 0x0

    const/4 v5, 0x4

    :try_start_0
    invoke-virtual {v1, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 566
    add-int v4, p1, p3

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 567
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 568
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 569
    const/4 v4, 0x0

    invoke-virtual {v1, p2, v4, p1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 570
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 571
    const/4 v4, 0x0

    invoke-virtual {v1, p4, v4, p3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5, p5}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 578
    :goto_0
    return-void

    .line 572
    :catch_0
    move-exception v2

    .line 573
    .local v2, e:Ljava/io/IOException;
    const-string v4, "Could not build the OEM RAW command for ISIM AUTH Req"

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 560
    nop

    :array_0
    .array-data 0x1
        0x2t
        0xat
        0x0t
        0xct
    .end array-data
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 206
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 92
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "GSM"

    const-string v1, "ISIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public getEFLinearRecordSize(IILandroid/os/Message;)V
    .locals 11
    .parameter "sessionid"
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 145
    const/16 v0, 0x8

    new-instance v1, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 149
    .local v10, response:Landroid/os/Message;
    const/16 v2, 0xc0

    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xf

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v6, v5

    move-object v9, v8

    invoke-direct/range {v0 .. v10}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendIccOemIOCommand(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 151
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 2
    .parameter "efid"

    .prologue
    .line 493
    sparse-switch p1, :sswitch_data_0

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ISIM File access"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->loge(Ljava/lang/String;)V

    .line 503
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 500
    :sswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 493
    :sswitch_data_0
    .sparse-switch
        0x6f02 -> :sswitch_0
        0x6f03 -> :sswitch_0
        0x6f04 -> :sswitch_0
        0x6f07 -> :sswitch_0
        0x6f09 -> :sswitch_0
        0x6fad -> :sswitch_0
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 33
    .parameter "msg"

    .prologue
    .line 213
    const/16 v31, 0x0

    .line 229
    .local v31, response:Landroid/os/Message;
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 480
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handler received unknown message"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->loge(Ljava/lang/String;)V

    .line 490
    :goto_0
    return-void

    .line 231
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 232
    .local v22, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;

    .line 233
    .local v27, lc:Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v31, v0

    .line 234
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v32, v0

    .line 235
    .local v32, result:[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISIMFileHandler:Response byte array for msg: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->logd(Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 239
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v3, v5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 483
    .end local v22           #ar:Landroid/os/AsyncResult;
    .end local v27           #lc:Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
    .end local v32           #result:[B
    :catch_0
    move-exception v24

    .line 484
    .local v24, exc:Ljava/lang/Exception;
    if-eqz v31, :cond_1b

    .line 485
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 243
    .end local v24           #exc:Ljava/lang/Exception;
    .restart local v22       #ar:Landroid/os/AsyncResult;
    .restart local v27       #lc:Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
    .restart local v32       #result:[B
    :cond_0
    :try_start_1
    new-instance v26, Lcom/android/internal/telephony/IccIoResult;

    const/4 v3, 0x1

    aget-byte v3, v32, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v5, 0x2

    aget-byte v5, v32, v5

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-direct {v0, v3, v5, v1}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    .line 245
    .local v26, iccResult:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v25

    .line 247
    .local v25, iccException:Lcom/android/internal/telephony/IccException;
    if-nez v25, :cond_1

    const/4 v3, 0x0

    aget-byte v3, v32, v3

    if-eqz v3, :cond_2

    .line 248
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 252
    :cond_2
    move-object/from16 v0, v32

    array-length v3, v0

    new-array v0, v3, [B

    move-object/from16 v23, v0

    .line 253
    .local v23, data:[B
    const/4 v3, 0x3

    aget-byte v3, v32, v3

    shl-int/lit8 v3, v3, 0x8

    const/4 v5, 0x4

    aget-byte v5, v32, v5

    add-int v28, v3, v5

    .line 254
    .local v28, length:I
    const/4 v3, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move/from16 v2, v28

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    const/4 v3, 0x4

    const/4 v5, 0x6

    aget-byte v5, v23, v5

    if-ne v3, v5, :cond_3

    const/4 v3, 0x1

    const/16 v5, 0xd

    aget-byte v5, v23, v5

    if-eq v3, v5, :cond_4

    .line 258
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 261
    :cond_4
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v30, v0

    .line 262
    .local v30, recordSize:[I
    const/4 v3, 0x0

    const/16 v5, 0xe

    aget-byte v5, v23, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v30, v3

    .line 263
    const/4 v3, 0x1

    const/4 v5, 0x2

    aget-byte v5, v23, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v7, 0x3

    aget-byte v7, v23, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v5, v7

    aput v5, v30, v3

    .line 265
    const/4 v3, 0x2

    const/4 v5, 0x1

    aget v5, v30, v5

    const/4 v7, 0x0

    aget v7, v30, v7

    div-int/2addr v5, v7

    aput v5, v30, v3

    .line 267
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 270
    .end local v22           #ar:Landroid/os/AsyncResult;
    .end local v23           #data:[B
    .end local v25           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v26           #iccResult:Lcom/android/internal/telephony/IccIoResult;
    .end local v27           #lc:Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
    .end local v28           #length:I
    .end local v30           #recordSize:[I
    .end local v32           #result:[B
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 271
    .restart local v22       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;

    .line 272
    .restart local v27       #lc:Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v31, v0

    .line 273
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v32, v0

    .line 274
    .restart local v32       #result:[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISIMFileHandler:Response byte array for msg: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->logd(Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    .line 278
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v3, v5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 283
    :cond_5
    new-instance v26, Lcom/android/internal/telephony/IccIoResult;

    const/4 v3, 0x1

    aget-byte v3, v32, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v5, 0x2

    aget-byte v5, v32, v5

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-direct {v0, v3, v5, v1}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    .line 285
    .restart local v26       #iccResult:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v25

    .line 287
    .restart local v25       #iccException:Lcom/android/internal/telephony/IccException;
    if-nez v25, :cond_6

    const/4 v3, 0x0

    aget-byte v3, v32, v3

    if-eqz v3, :cond_7

    .line 288
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 292
    :cond_7
    move-object/from16 v0, v32

    array-length v3, v0

    new-array v0, v3, [B

    move-object/from16 v23, v0

    .line 293
    .restart local v23       #data:[B
    const/4 v3, 0x3

    aget-byte v3, v32, v3

    shl-int/lit8 v3, v3, 0x8

    const/4 v5, 0x4

    aget-byte v5, v32, v5

    add-int v28, v3, v5

    .line 294
    .restart local v28       #length:I
    const/4 v3, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move/from16 v2, v28

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    move-object/from16 v0, v27

    iget v6, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->efid:I

    .line 297
    .local v6, fileid:I
    move-object/from16 v0, v27

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v29, v0

    .line 299
    .local v29, recordNum:I
    const/4 v3, 0x4

    const/4 v5, 0x6

    aget-byte v5, v23, v5

    if-eq v3, v5, :cond_8

    .line 300
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 303
    :cond_8
    const/4 v3, 0x1

    const/16 v5, 0xd

    aget-byte v5, v23, v5

    if-eq v3, v5, :cond_9

    .line 304
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 307
    :cond_9
    const/16 v3, 0xe

    aget-byte v3, v23, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v27

    iput v3, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 309
    const/4 v3, 0x2

    aget-byte v3, v23, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v5, 0x3

    aget-byte v5, v23, v5

    and-int/lit16 v5, v5, 0xff

    add-int v10, v3, v5

    .line 312
    .local v10, size:I
    move-object/from16 v0, v27

    iget v3, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v3, v10, v3

    move-object/from16 v0, v27

    iput v3, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 314
    move-object/from16 v0, v27

    iget-boolean v3, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v3, :cond_a

    .line 315
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v27

    iget v5, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 318
    :cond_a
    move-object/from16 v0, v27

    iget v4, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->sessionid:I

    const/16 v5, 0xb2

    move-object/from16 v0, v27

    iget v6, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->efid:I

    .end local v6           #fileid:I
    move-object/from16 v0, v27

    iget v3, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v27

    iget v8, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v9, 0x4

    move-object/from16 v0, v27

    iget v10, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordSize:I

    .end local v10           #size:I
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v13}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendIccOemIOCommand(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 325
    .end local v22           #ar:Landroid/os/AsyncResult;
    .end local v23           #data:[B
    .end local v25           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v26           #iccResult:Lcom/android/internal/telephony/IccIoResult;
    .end local v27           #lc:Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
    .end local v28           #length:I
    .end local v29           #recordNum:I
    .end local v32           #result:[B
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 326
    .restart local v22       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v31, v0

    .line 327
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v32, v0

    .line 328
    .restart local v32       #result:[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISIMFileHandler:Response byte array for msg: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->logd(Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_b

    .line 332
    const-string v3, "ISIMFileHandler: ril exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->logd(Ljava/lang/String;)V

    .line 333
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v3, v5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 338
    :cond_b
    new-instance v26, Lcom/android/internal/telephony/IccIoResult;

    const/4 v3, 0x1

    aget-byte v3, v32, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v5, 0x2

    aget-byte v5, v32, v5

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-direct {v0, v3, v5, v1}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    .line 340
    .restart local v26       #iccResult:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v25

    .line 342
    .restart local v25       #iccException:Lcom/android/internal/telephony/IccException;
    if-nez v25, :cond_c

    const/4 v3, 0x0

    aget-byte v3, v32, v3

    if-eqz v3, :cond_d

    .line 343
    :cond_c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 347
    :cond_d
    move-object/from16 v0, v32

    array-length v3, v0

    new-array v0, v3, [B

    move-object/from16 v23, v0

    .line 348
    .restart local v23       #data:[B
    const/4 v3, 0x3

    aget-byte v3, v32, v3

    shl-int/lit8 v3, v3, 0x8

    const/4 v5, 0x4

    aget-byte v5, v32, v5

    add-int v28, v3, v5

    .line 349
    .restart local v28       #length:I
    const/4 v3, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move/from16 v2, v28

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 352
    .restart local v6       #fileid:I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 354
    .local v4, sessionid:I
    const/4 v3, 0x4

    const/4 v5, 0x6

    aget-byte v5, v23, v5

    if-eq v3, v5, :cond_e

    .line 355
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 358
    :cond_e
    const/16 v3, 0xd

    aget-byte v3, v23, v3

    if-eqz v3, :cond_f

    .line 359
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 362
    :cond_f
    const/4 v3, 0x2

    aget-byte v3, v23, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v5, 0x3

    aget-byte v5, v23, v5

    and-int/lit16 v5, v5, 0xff

    add-int v10, v3, v5

    .line 365
    .restart local v10       #size:I
    const/16 v5, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x5

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v6, v13, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v13}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendIccOemIOCommand(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 373
    .end local v4           #sessionid:I
    .end local v6           #fileid:I
    .end local v10           #size:I
    .end local v22           #ar:Landroid/os/AsyncResult;
    .end local v23           #data:[B
    .end local v25           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v26           #iccResult:Lcom/android/internal/telephony/IccIoResult;
    .end local v28           #length:I
    .end local v32           #result:[B
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 374
    .restart local v22       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;

    .line 375
    .restart local v27       #lc:Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v32, v0

    .line 376
    .restart local v32       #result:[B
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v31, v0

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISIMFileHandler:Response byte array for msg: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->logd(Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_10

    .line 381
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v3, v5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 385
    :cond_10
    new-instance v26, Lcom/android/internal/telephony/IccIoResult;

    const/4 v3, 0x1

    aget-byte v3, v32, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v5, 0x2

    aget-byte v5, v32, v5

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-direct {v0, v3, v5, v1}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    .line 387
    .restart local v26       #iccResult:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v25

    .line 389
    .restart local v25       #iccException:Lcom/android/internal/telephony/IccException;
    if-nez v25, :cond_11

    const/4 v3, 0x0

    aget-byte v3, v32, v3

    if-eqz v3, :cond_12

    .line 390
    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 394
    :cond_12
    move-object/from16 v0, v32

    array-length v3, v0

    new-array v0, v3, [B

    move-object/from16 v23, v0

    .line 395
    .restart local v23       #data:[B
    const/4 v3, 0x3

    aget-byte v3, v32, v3

    shl-int/lit8 v3, v3, 0x8

    const/4 v5, 0x4

    aget-byte v5, v32, v5

    add-int v28, v3, v5

    .line 396
    .restart local v28       #length:I
    const/4 v3, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move/from16 v2, v28

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    move-object/from16 v0, v27

    iget-boolean v3, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-nez v3, :cond_13

    .line 399
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 401
    :cond_13
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    move-object/from16 v0, v27

    iget v3, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v27

    iput v3, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 405
    move-object/from16 v0, v27

    iget v3, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordNum:I

    move-object/from16 v0, v27

    iget v5, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->countRecords:I

    if-le v3, v5, :cond_14

    .line 406
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v3, v5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 408
    :cond_14
    move-object/from16 v0, v27

    iget v12, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->sessionid:I

    const/16 v13, 0xb2

    move-object/from16 v0, v27

    iget v14, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v27

    iget v3, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v27

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move-object/from16 v0, v27

    iget v0, v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v21}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendIccOemIOCommand(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 420
    .end local v22           #ar:Landroid/os/AsyncResult;
    .end local v23           #data:[B
    .end local v25           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v26           #iccResult:Lcom/android/internal/telephony/IccIoResult;
    .end local v27           #lc:Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
    .end local v28           #length:I
    .end local v32           #result:[B
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 421
    .restart local v22       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v31, v0

    .line 422
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v32, v0

    .line 423
    .restart local v32       #result:[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISIMFileHandler:Response byte array for msg: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->logd(Ljava/lang/String;)V

    .line 426
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_15

    .line 427
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v3, v5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 431
    :cond_15
    new-instance v26, Lcom/android/internal/telephony/IccIoResult;

    const/4 v3, 0x1

    aget-byte v3, v32, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v5, 0x2

    aget-byte v5, v32, v5

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-direct {v0, v3, v5, v1}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    .line 433
    .restart local v26       #iccResult:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v25

    .line 435
    .restart local v25       #iccException:Lcom/android/internal/telephony/IccException;
    if-nez v25, :cond_16

    const/4 v3, 0x0

    aget-byte v3, v32, v3

    if-eqz v3, :cond_17

    .line 436
    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 440
    :cond_17
    move-object/from16 v0, v32

    array-length v3, v0

    new-array v0, v3, [B

    move-object/from16 v23, v0

    .line 441
    .restart local v23       #data:[B
    const/4 v3, 0x3

    aget-byte v3, v32, v3

    shl-int/lit8 v3, v3, 0x8

    const/4 v5, 0x4

    aget-byte v5, v32, v5

    add-int v28, v3, v5

    .line 442
    .restart local v28       #length:I
    const/4 v3, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move/from16 v2, v28

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 447
    .end local v22           #ar:Landroid/os/AsyncResult;
    .end local v23           #data:[B
    .end local v25           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v26           #iccResult:Lcom/android/internal/telephony/IccIoResult;
    .end local v28           #length:I
    .end local v32           #result:[B
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 448
    .restart local v22       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v31, v0

    .line 449
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v32, v0

    .line 450
    .restart local v32       #result:[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISIMFileHandler:Response byte array for msg: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->logd(Ljava/lang/String;)V

    .line 453
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_18

    .line 454
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v3, v5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 457
    :cond_18
    const/4 v3, 0x0

    aget-byte v3, v32, v3

    if-eqz v3, :cond_19

    .line 458
    const/4 v3, 0x0

    new-instance v5, Lcom/android/internal/telephony/IccException;

    const-string v7, "Error in Channel Open"

    invoke-direct {v5, v7}, Lcom/android/internal/telephony/IccException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v3, v5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 462
    :cond_19
    move-object/from16 v0, v32

    array-length v3, v0

    new-array v0, v3, [B

    move-object/from16 v23, v0

    .line 463
    .restart local v23       #data:[B
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x4

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-static {v0, v3, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 467
    .end local v22           #ar:Landroid/os/AsyncResult;
    .end local v23           #data:[B
    .end local v32           #result:[B
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 468
    .restart local v22       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v31, v0

    .line 469
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v32, v0

    .line 470
    .restart local v32       #result:[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISIMFileHandler:Response byte array for msg: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->logd(Ljava/lang/String;)V

    .line 473
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1a

    .line 474
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v3, v5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 477
    :cond_1a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 487
    .end local v22           #ar:Landroid/os/AsyncResult;
    .end local v32           #result:[B
    .restart local v24       #exc:Ljava/lang/Exception;
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uncaught exception"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public loadEFLinearFixed(IIILandroid/os/Message;)V
    .locals 11
    .parameter "sessionid"
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 127
    const/4 v0, 0x6

    new-instance v1, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;-><init>(IIILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 131
    .local v10, response:Landroid/os/Message;
    const/16 v2, 0xc0

    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xf

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v6, v5

    move-object v9, v8

    invoke-direct/range {v0 .. v10}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendIccOemIOCommand(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 133
    return-void
.end method

.method public loadEFLinearFixedAll(IILandroid/os/Message;)V
    .locals 11
    .parameter "sessionid"
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 163
    const/4 v0, 0x6

    new-instance v1, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 166
    .local v10, response:Landroid/os/Message;
    const/16 v2, 0xc0

    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xf

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v6, v5

    move-object v9, v8

    invoke-direct/range {v0 .. v10}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendIccOemIOCommand(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 168
    return-void
.end method

.method public loadEFTransparent(IILandroid/os/Message;)V
    .locals 11
    .parameter "sessionid"
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 181
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 183
    .local v10, response:Landroid/os/Message;
    const/16 v2, 0xc0

    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xf

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v6, v5

    move-object v9, v8

    invoke-direct/range {v0 .. v10}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendIccOemIOCommand(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 185
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 581
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 585
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void
.end method

.method public openLogicalChannel([BLandroid/os/Message;)V
    .locals 2
    .parameter "AID"
    .parameter "onLoaded"

    .prologue
    .line 110
    const/16 v1, 0xb

    invoke-virtual {p0, v1, p2}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 114
    .local v0, response:Landroid/os/Message;
    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendIccOemCCHOCommand([BLandroid/os/Message;)V

    .line 115
    return-void
.end method

.method public performISIMAuthentication(I[BI[BLandroid/os/Message;)V
    .locals 6
    .parameter "rand_len"
    .parameter "rand"
    .parameter "autn_len"
    .parameter "autn"
    .parameter "onLoaded"

    .prologue
    .line 194
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .local v5, response:Landroid/os/Message;
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 196
    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;->sendIccOemIsimAuthCommand(I[BI[BLandroid/os/Message;)V

    .line 197
    return-void
.end method
