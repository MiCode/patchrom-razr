.class public final Lcom/motorola/android/locationproxy/Supl;
.super Lcom/motorola/android/locationproxy/BaseSuplCommands;
.source "Supl.java"

# interfaces
.implements Lcom/motorola/android/locationproxy/ISuplCommands;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/locationproxy/Supl$SuplReceiver;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SUPLJ"

.field static final MAX_COMMAND_BYTES:I = 0xfffd

.field static final SOCKET_NAME_SUPLD:Ljava/lang/String; = "location_shim"

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field static final SUPL_LOG:Z = true

.field private static sFqdnReadLock:Ljava/lang/Object;

.field private static sFqdnWriteLock:Ljava/lang/Object;

.field private static sNextSessionId:B

.field private static sNextTransactionId:B

.field private static sSessionIdMonitor:Ljava/lang/Object;

.field private static sTransactionIdMonitor:Ljava/lang/Object;


# instance fields
.field private mFqdnAddr:Ljava/lang/String;

.field private mFqdnWriteResult:Z

.field mReceiver:Lcom/motorola/android/locationproxy/Supl$SuplReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/locationproxy/SuplRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSocket:Landroid/net/LocalSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x2

    sput-byte v0, Lcom/motorola/android/locationproxy/Supl;->sNextSessionId:B

    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/android/locationproxy/Supl;->sSessionIdMonitor:Ljava/lang/Object;

    .line 217
    const/4 v0, 0x1

    sput-byte v0, Lcom/motorola/android/locationproxy/Supl;->sNextTransactionId:B

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/android/locationproxy/Supl;->sTransactionIdMonitor:Ljava/lang/Object;

    .line 220
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/android/locationproxy/Supl;->sFqdnReadLock:Ljava/lang/Object;

    .line 221
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/android/locationproxy/Supl;->sFqdnWriteLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/BaseSuplCommands;-><init>(Landroid/content/Context;)V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnAddr:Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnWriteResult:Z

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    .line 425
    const-string v0, "1"

    const-string v1, "ro.kernel.qemu"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;

    invoke-direct {v0, p0}, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;-><init>(Lcom/motorola/android/locationproxy/Supl;)V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/Supl;->mReceiver:Lcom/motorola/android/locationproxy/Supl$SuplReceiver;

    .line 427
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/motorola/android/locationproxy/Supl;->mReceiver:Lcom/motorola/android/locationproxy/Supl$SuplReceiver;

    const-string v2, "SuplReceiver"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/Supl;->mReceiverThread:Ljava/lang/Thread;

    .line 428
    iget-object v0, p0, Lcom/motorola/android/locationproxy/Supl;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 430
    :cond_0
    return-void
.end method

.method static SubCommandIdToString(B)Ljava/lang/String;
    .locals 1
    .parameter "subCommandId"

    .prologue
    .line 1538
    packed-switch p0, :pswitch_data_0

    .line 1559
    :pswitch_0
    const-string v0, "<unknown subCommandId>"

    :goto_0
    return-object v0

    .line 1539
    :pswitch_1
    const-string v0, "WRITE_DB_REQ"

    goto :goto_0

    .line 1540
    :pswitch_2
    const-string v0, "WRITE_DB_RES"

    goto :goto_0

    .line 1541
    :pswitch_3
    const-string v0, "READ_DB_REQ"

    goto :goto_0

    .line 1542
    :pswitch_4
    const-string v0, "READ_DB_RES"

    goto :goto_0

    .line 1543
    :pswitch_5
    const-string v0, "OPEN_SOCK_REQ"

    goto :goto_0

    .line 1544
    :pswitch_6
    const-string v0, "OPEN_SOCK_RES"

    goto :goto_0

    .line 1545
    :pswitch_7
    const-string v0, "SOCK_DATA_REQ"

    goto :goto_0

    .line 1546
    :pswitch_8
    const-string v0, "SOCK_DATA_RES"

    goto :goto_0

    .line 1547
    :pswitch_9
    const-string v0, "SOCK_DATA_IND"

    goto :goto_0

    .line 1548
    :pswitch_a
    const-string v0, "CLOSE_SOCK_REQ"

    goto :goto_0

    .line 1549
    :pswitch_b
    const-string v0, "CLOSE_SOCK_RES"

    goto :goto_0

    .line 1550
    :pswitch_c
    const-string v0, "WAP_PUSH_IND"

    goto :goto_0

    .line 1551
    :pswitch_d
    const-string v0, "MTLR_NOTIFY_IND"

    goto :goto_0

    .line 1552
    :pswitch_e
    const-string v0, "MTLR_NOTIFY_RES"

    goto :goto_0

    .line 1553
    :pswitch_f
    const-string v0, "MTLR_NOTIFY_STATUS"

    goto :goto_0

    .line 1554
    :pswitch_10
    const-string v0, "TLS_REQ"

    goto :goto_0

    .line 1555
    :pswitch_11
    const-string v0, "TLS_RES"

    goto :goto_0

    .line 1556
    :pswitch_12
    const-string v0, "MTLR2_IND"

    goto :goto_0

    .line 1557
    :pswitch_13
    const-string v0, "HTTP_POST_REQ"

    goto :goto_0

    .line 1558
    :pswitch_14
    const-string v0, "HTTP_POST_RES"

    goto :goto_0

    .line 1538
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method static synthetic access$000(Ljava/io/InputStream;[B)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->readSuplMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([BI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 206
    invoke-static {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->logHexData([BI)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/android/locationproxy/Supl;Landroid/os/Parcel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processResponse(Landroid/os/Parcel;)V

    return-void
.end method

.method private convertUcs2ToUtf8([B)[B
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 1388
    const/4 v2, 0x0

    .line 1390
    .local v2, l:I
    const/16 v6, 0xd8

    new-array v0, v6, [B

    .line 1391
    .local v0, buf:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_2

    .line 1392
    aget-byte v6, p1, v1

    and-int/lit16 v6, v6, 0xff

    int-to-char v5, v6

    .line 1393
    .local v5, v:C
    shl-int/lit8 v6, v5, 0x8

    int-to-char v5, v6

    .line 1394
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v5

    int-to-char v5, v6

    .line 1395
    const/16 v6, 0x80

    if-ge v5, v6, :cond_0

    .line 1396
    add-int/lit8 v3, v2, 0x1

    .end local v2           #l:I
    .local v3, l:I
    and-int/lit8 v6, v5, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    move v2, v3

    .line 1391
    .end local v3           #l:I
    .restart local v2       #l:I
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1398
    :cond_0
    const/16 v6, 0x800

    if-ge v5, v6, :cond_1

    .line 1399
    add-int/lit8 v3, v2, 0x1

    .end local v2           #l:I
    .restart local v3       #l:I
    and-int/lit16 v6, v5, 0x7c0

    or-int/lit16 v6, v6, 0x3000

    shr-int/lit8 v6, v6, 0x6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 1400
    add-int/lit8 v2, v3, 0x1

    .end local v3           #l:I
    .restart local v2       #l:I
    and-int/lit8 v6, v5, 0x3f

    or-int/lit16 v6, v6, 0x80

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    goto :goto_1

    .line 1403
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2           #l:I
    .restart local v3       #l:I
    const v6, 0xf000

    and-int/2addr v6, v5

    shr-int/lit8 v6, v6, 0xc

    or-int/lit16 v6, v6, 0xe0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 1404
    add-int/lit8 v2, v3, 0x1

    .end local v3           #l:I
    .restart local v2       #l:I
    and-int/lit16 v6, v5, 0xfc0

    or-int/lit16 v6, v6, 0x2000

    shr-int/lit8 v6, v6, 0x6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    .line 1405
    add-int/lit8 v3, v2, 0x1

    .end local v2           #l:I
    .restart local v3       #l:I
    and-int/lit8 v6, v5, 0x3f

    or-int/lit16 v6, v6, 0x80

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    move v2, v3

    .end local v3           #l:I
    .restart local v2       #l:I
    goto :goto_1

    .line 1409
    .end local v5           #v:C
    :cond_2
    new-array v4, v2, [B

    .line 1410
    .local v4, utf8String:[B
    invoke-static {v0, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1411
    invoke-static {v4}, Lcom/motorola/android/locationproxy/Supl;->logHexData([B)V

    .line 1412
    return-object v4
.end method

.method private findAndRemoveRequestFromList(BBB)Lcom/motorola/android/locationproxy/SuplRequest;
    .locals 6
    .parameter "sessionId"
    .parameter "transactionId"
    .parameter "subCmdId"

    .prologue
    .line 942
    iget-object v4, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 943
    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 944
    iget-object v3, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/locationproxy/SuplRequest;

    .line 945
    .local v1, r:Lcom/motorola/android/locationproxy/SuplRequest;
    iget-byte v3, v1, Lcom/motorola/android/locationproxy/SuplRequest;->mSessionId:B

    if-ne v3, p1, :cond_0

    iget-byte v3, v1, Lcom/motorola/android/locationproxy/SuplRequest;->mTransactionId:B

    if-ne v3, p2, :cond_0

    iget-byte v3, v1, Lcom/motorola/android/locationproxy/SuplRequest;->mSubCommandId:B

    if-ne v3, p3, :cond_0

    .line 948
    iget-object v3, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findAndRemoveRequestFromList: Found REQUEST: sID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " tID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " cmd="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Lcom/motorola/android/locationproxy/Supl;->SubCommandIdToString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    .line 952
    monitor-exit v4

    .line 960
    .end local v1           #r:Lcom/motorola/android/locationproxy/SuplRequest;
    :goto_1
    return-object v1

    .line 943
    .restart local v1       #r:Lcom/motorola/android/locationproxy/SuplRequest;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 955
    .end local v1           #r:Lcom/motorola/android/locationproxy/SuplRequest;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findAndRemoveRequestFromList: NOT Found REQUEST: sID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Lcom/motorola/android/locationproxy/Supl;->SubCommandIdToString(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    .line 960
    const/4 v1, 0x0

    goto :goto_1

    .line 955
    .end local v2           #s:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private findAndRemoveRequestFromList(I)Lcom/motorola/android/locationproxy/SuplRequest;
    .locals 6
    .parameter "serial"

    .prologue
    .line 926
    iget-object v4, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 927
    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 928
    iget-object v3, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/locationproxy/SuplRequest;

    .line 929
    .local v1, r:Lcom/motorola/android/locationproxy/SuplRequest;
    iget v3, v1, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    if-ne v3, p1, :cond_0

    .line 930
    iget-object v3, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 931
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findAndRemoveRequestFromList: Found REQUEST: id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    .line 932
    monitor-exit v4

    .line 937
    .end local v1           #r:Lcom/motorola/android/locationproxy/SuplRequest;
    :goto_1
    return-object v1

    .line 927
    .restart local v1       #r:Lcom/motorola/android/locationproxy/SuplRequest;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 935
    .end local v1           #r:Lcom/motorola/android/locationproxy/SuplRequest;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findAndRemoveRequestFromList: NOT Found REQUEST id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    .line 937
    const/4 v1, 0x0

    goto :goto_1

    .line 935
    .end local v2           #s:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private generateSessionID()B
    .locals 3

    .prologue
    .line 1569
    const/4 v0, 0x0

    .line 1570
    .local v0, ret:B
    sget-object v2, Lcom/motorola/android/locationproxy/Supl;->sSessionIdMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 1571
    :try_start_0
    sget-byte v0, Lcom/motorola/android/locationproxy/Supl;->sNextSessionId:B

    .line 1572
    sget-byte v1, Lcom/motorola/android/locationproxy/Supl;->sNextSessionId:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/motorola/android/locationproxy/Supl;->sNextSessionId:B

    .line 1573
    monitor-exit v2

    .line 1574
    return v0

    .line 1573
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private generateTransactionId()B
    .locals 3

    .prologue
    .line 1579
    const/4 v0, 0x0

    .line 1580
    .local v0, ret:B
    sget-object v2, Lcom/motorola/android/locationproxy/Supl;->sTransactionIdMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 1581
    :try_start_0
    sget-byte v0, Lcom/motorola/android/locationproxy/Supl;->sNextTransactionId:B

    .line 1582
    sget-byte v1, Lcom/motorola/android/locationproxy/Supl;->sNextTransactionId:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/motorola/android/locationproxy/Supl;->sNextTransactionId:B

    .line 1583
    monitor-exit v2

    .line 1584
    return v0

    .line 1583
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static logHexData([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 1628
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/motorola/android/locationproxy/Supl;->logHexData([BI)V

    .line 1629
    return-void
.end method

.method private static logHexData([BI)V
    .locals 6
    .parameter "data"
    .parameter "length"

    .prologue
    .line 1601
    array-length v4, p0

    if-ge p1, v4, :cond_1

    move v1, p1

    .line 1603
    .local v1, l:I
    :goto_0
    const-string v4, "SUPLJ"

    const-string v5, "package: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[ "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1606
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 1607
    rem-int/lit8 v4, v0, 0x8

    if-nez v4, :cond_0

    if-lez v0, :cond_0

    .line 1608
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    const-string v4, "SUPLJ"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #sb:Ljava/lang/StringBuilder;
    const-string v4, "[ "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1613
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :cond_0
    aget-byte v3, p0, v0

    .line 1614
    .local v3, v:I
    and-int/lit16 v3, v3, 0xff

    .line 1615
    const/16 v4, 0x10

    if-ge v3, v4, :cond_2

    .line 1616
    const-string v4, "0x0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1601
    .end local v0           #i:I
    .end local v1           #l:I
    .end local v2           #sb:Ljava/lang/StringBuilder;
    .end local v3           #v:I
    :cond_1
    array-length v1, p0

    goto :goto_0

    .line 1618
    .restart local v0       #i:I
    .restart local v1       #l:I
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    .restart local v3       #v:I
    :cond_2
    const-string v4, "0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1622
    .end local v3           #v:I
    :cond_3
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    const-string v4, "SUPLJ"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    return-void
.end method

.method private logSuplApBpRequest([B)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 1589
    const/4 v3, 0x3

    invoke-direct {p0, p1, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v1

    .line 1590
    .local v1, subCommandId:B
    const/4 v3, 0x4

    invoke-direct {p0, p1, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v0

    .line 1591
    .local v0, sessionId:B
    const/4 v3, 0x5

    invoke-direct {p0, p1, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v2

    .line 1593
    .local v2, transactionId:B
    const-string v3, "SUPLJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/motorola/android/locationproxy/Supl;->SubCommandIdToString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    const-string v3, "SUPLJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], transaction ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    invoke-static {p1}, Lcom/motorola/android/locationproxy/Supl;->logHexData([B)V

    .line 1596
    return-void
.end method

.method private processCloseSocketRequest(Landroid/os/Parcel;)V
    .locals 9
    .parameter "p"

    .prologue
    const/4 v8, 0x0

    .line 1168
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 1169
    .local v0, buf:[B
    const/4 v1, 0x1

    .line 1170
    .local v1, offset:I
    invoke-direct {p0, v0, v1}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v4

    .line 1171
    .local v4, sessionId:B
    add-int/lit8 v1, v1, 0x1

    .line 1172
    invoke-direct {p0, v0, v1}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v5

    .line 1173
    .local v5, transactionId:B
    add-int/lit8 v1, v1, 0x1

    .line 1175
    const/16 v6, 0xe

    invoke-static {v6, v4, v5, v8}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .line 1179
    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v2, Lcom/motorola/android/locationproxy/SuplRequest;->mSubCommandId:B

    invoke-static {v7}, Lcom/motorola/android/locationproxy/Supl;->SubCommandIdToString(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    .line 1180
    iget-object v7, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1181
    :try_start_0
    iget-object v6, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1184
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Object;

    .line 1185
    .local v3, result:[Ljava/lang/Object;
    const/4 v6, 0x0

    iget v7, v2, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    .line 1188
    const/4 v6, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    .line 1189
    add-int/lit8 v1, v1, 0x4

    .line 1191
    iget-object v6, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mCloseSocketRegistrants:Landroid/os/RegistrantList;

    new-instance v7, Landroid/os/AsyncResult;

    invoke-direct {v7, v8, v3, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1192
    return-void

    .line 1182
    .end local v3           #result:[Ljava/lang/Object;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private processDbReadResult(Landroid/os/Parcel;)V
    .locals 15
    .parameter "p"

    .prologue
    .line 1035
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 1036
    .local v0, buf:[B
    const/4 v6, 0x1

    .line 1037
    .local v6, offset:I
    invoke-direct {p0, v0, v6}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v9

    .line 1038
    .local v9, sessionId:B
    add-int/lit8 v6, v6, 0x1

    .line 1039
    invoke-direct {p0, v0, v6}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v11

    .line 1040
    .local v11, transactionId:B
    add-int/lit8 v6, v6, 0x1

    .line 1042
    const/4 v12, 0x6

    invoke-direct {p0, v9, v11, v12}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(BBB)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v7

    .line 1045
    .local v7, r:Lcom/motorola/android/locationproxy/SuplRequest;
    if-nez v7, :cond_1

    .line 1046
    const-string v12, "SUPLJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected DB write result! sessiionId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "transactionId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnAddr:Ljava/lang/String;

    .line 1079
    :cond_0
    :goto_0
    sget-object v13, Lcom/motorola/android/locationproxy/Supl;->sFqdnReadLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1080
    :try_start_0
    const-string v12, "SUPLJ"

    const-string v14, "calling sFqdnReadLock.notifyAll()"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    sget-object v12, Lcom/motorola/android/locationproxy/Supl;->sFqdnReadLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 1082
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    return-void

    .line 1051
    :cond_1
    invoke-virtual {v7}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    .line 1053
    :try_start_1
    invoke-direct {p0, v0, v6}, Lcom/motorola/android/locationproxy/Supl;->readShort([BI)S

    move-result v5

    .line 1054
    .local v5, numFiles:S
    add-int/lit8 v6, v6, 0x2

    .line 1055
    const-string v12, "SUPLJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Number of files: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v3, 0x0

    .local v3, i:S
    :goto_1
    if-ge v3, v5, :cond_2

    .line 1058
    invoke-direct {p0, v0, v6}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v2

    .line 1059
    .local v2, fileId:I
    add-int/lit8 v6, v6, 0x4

    .line 1060
    invoke-direct {p0, v0, v6}, Lcom/motorola/android/locationproxy/Supl;->readShort([BI)S

    move-result v4

    .line 1061
    .local v4, length:S
    add-int/lit8 v6, v6, 0x2

    .line 1064
    invoke-direct {p0, v0, v6, v4}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v1

    .line 1065
    .local v1, data:[B
    add-int/2addr v6, v4

    .line 1067
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v12, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnAddr:Ljava/lang/String;

    .line 1068
    const-string v12, "SUPLJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "read supl address:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnAddr:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    add-int/lit8 v12, v3, 0x1

    int-to-short v3, v12

    goto :goto_1

    .line 1071
    .end local v1           #data:[B
    .end local v2           #fileId:I
    .end local v4           #length:S
    :cond_2
    invoke-direct {p0, v0, v6}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v8

    .line 1072
    .local v8, result:I
    if-eqz v8, :cond_0

    .line 1073
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "DB Error"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1075
    .end local v3           #i:S
    .end local v5           #numFiles:S
    .end local v8           #result:I
    :catch_0
    move-exception v10

    .line 1076
    .local v10, tr:Ljava/lang/Throwable;
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnAddr:Ljava/lang/String;

    goto :goto_0

    .line 1082
    .end local v10           #tr:Ljava/lang/Throwable;
    :catchall_0
    move-exception v12

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12
.end method

.method private processDbWriteResult(Landroid/os/Parcel;)V
    .locals 11
    .parameter "p"

    .prologue
    const/4 v10, 0x0

    .line 995
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 996
    .local v0, buf:[B
    const/4 v1, 0x1

    .line 997
    .local v1, offset:I
    invoke-direct {p0, v0, v1}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v4

    .line 998
    .local v4, sessionId:B
    add-int/lit8 v1, v1, 0x1

    .line 999
    invoke-direct {p0, v0, v1}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v6

    .line 1000
    .local v6, transactionId:B
    add-int/lit8 v1, v1, 0x1

    .line 1002
    const/4 v7, 0x4

    invoke-direct {p0, v4, v6, v7}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(BBB)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .line 1005
    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    if-nez v2, :cond_0

    .line 1006
    const-string v7, "SUPLJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected DB write result! sessiionId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " transactionId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iput-boolean v10, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnWriteResult:Z

    .line 1027
    :goto_0
    sget-object v8, Lcom/motorola/android/locationproxy/Supl;->sFqdnWriteLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1028
    :try_start_0
    const-string v7, "SUPLJ"

    const-string v9, "calling sFqdnWriteLock.notifyAll()"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    sget-object v7, Lcom/motorola/android/locationproxy/Supl;->sFqdnWriteLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 1030
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    return-void

    .line 1011
    :cond_0
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    .line 1013
    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v3

    .line 1014
    .local v3, result:I
    add-int/lit8 v1, v1, 0x4

    .line 1016
    const-string v7, "SUPLJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    if-eqz v3, :cond_1

    .line 1018
    const-string v7, "SUPLJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DB Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "DB Error"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1022
    .end local v3           #result:I
    :catch_0
    move-exception v5

    .line 1023
    .local v5, tr:Ljava/lang/Throwable;
    iput-boolean v10, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnWriteResult:Z

    goto :goto_0

    .line 1021
    .end local v5           #tr:Ljava/lang/Throwable;
    .restart local v3       #result:I
    :cond_1
    const/4 v7, 0x1

    :try_start_2
    iput-boolean v7, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnWriteResult:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1030
    .end local v3           #result:I
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7
.end method

.method private processHttpPostRequest(Landroid/os/Parcel;)V
    .locals 22
    .parameter "p"

    .prologue
    .line 1234
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 1236
    .local v3, buf:[B
    const/4 v5, 0x1

    .line 1237
    .local v5, offset:I
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v11

    .line 1238
    .local v11, sessionId:B
    add-int/lit8 v5, v5, 0x1

    .line 1239
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v12

    .line 1240
    .local v12, transactionId:B
    add-int/lit8 v5, v5, 0x1

    .line 1242
    const/16 v18, 0x21

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v11, v12, v1}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v9

    .line 1246
    .local v9, r:Lcom/motorola/android/locationproxy/SuplRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1247
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v10, v0, [Ljava/lang/Object;

    .line 1251
    .local v10, result:[Ljava/lang/Object;
    const/16 v18, 0x0

    iget v0, v9, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v10, v18

    .line 1255
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v14, v0, 0xff

    .line 1256
    .local v14, urlLength:I
    add-int/lit8 v5, v5, 0x1

    .line 1257
    if-lez v14, :cond_0

    .line 1258
    add-int/lit8 v18, v14, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v3, v5, v1}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v4

    .line 1259
    .local v4, httpUrl:[B
    const/16 v18, 0x1

    aput-object v4, v10, v18

    .line 1260
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v4}, Ljava/lang/String;-><init>([B)V

    .line 1261
    .local v13, url:Ljava/lang/String;
    const-string v18, "SUPLJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "url:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    .end local v4           #httpUrl:[B
    .end local v13           #url:Ljava/lang/String;
    :goto_0
    add-int/lit8 v5, v14, 0x4

    .line 1270
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v8, v0, 0xff

    .line 1271
    .local v8, pathLength:I
    add-int/lit8 v5, v5, 0x1

    .line 1272
    if-lez v8, :cond_1

    .line 1273
    add-int/lit8 v18, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v3, v5, v1}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v7

    .line 1274
    .local v7, path:[B
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 1275
    .local v6, pa:Ljava/lang/String;
    const-string v18, "SUPLJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "path:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const/16 v18, 0x2

    aput-object v7, v10, v18

    .line 1282
    .end local v6           #pa:Ljava/lang/String;
    .end local v7           #path:[B
    :goto_1
    add-int/2addr v5, v8

    .line 1285
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 1286
    .local v17, userAgentLength:I
    add-int/lit8 v5, v5, 0x1

    .line 1287
    if-lez v17, :cond_2

    .line 1288
    add-int/lit8 v18, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v3, v5, v1}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v16

    .line 1289
    .local v16, userAgent:[B
    new-instance v15, Ljava/lang/String;

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>([B)V

    .line 1290
    .local v15, user:Ljava/lang/String;
    const-string v18, "SUPLJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "agent:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const/16 v18, 0x3

    aput-object v16, v10, v18

    .line 1297
    .end local v15           #user:Ljava/lang/String;
    .end local v16           #userAgent:[B
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mHttpRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/AsyncResult;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v10, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v18 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1298
    return-void

    .line 1248
    .end local v8           #pathLength:I
    .end local v10           #result:[Ljava/lang/Object;
    .end local v14           #urlLength:I
    .end local v17           #userAgentLength:I
    :catchall_0
    move-exception v18

    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 1263
    .restart local v10       #result:[Ljava/lang/Object;
    .restart local v14       #urlLength:I
    :cond_0
    const-string v18, "SUPLJ"

    const-string v19, "url length is 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    const/16 v18, 0x1

    const/16 v19, 0x0

    aput-object v19, v10, v18

    goto/16 :goto_0

    .line 1278
    .restart local v8       #pathLength:I
    :cond_1
    const-string v18, "SUPLJ"

    const-string v19, "path length is 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const/16 v18, 0x2

    const/16 v19, 0x0

    aput-object v19, v10, v18

    goto :goto_1

    .line 1293
    .restart local v17       #userAgentLength:I
    :cond_2
    const-string v18, "SUPLJ"

    const-string v19, "userAgent length is 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const/16 v18, 0x3

    const/16 v19, 0x0

    aput-object v19, v10, v18

    goto :goto_2
.end method

.method private processMtlr2Request(Landroid/os/Parcel;)V
    .locals 24
    .parameter "p"

    .prologue
    .line 1417
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    .line 1418
    .local v4, buf:[B
    const/4 v13, 0x1

    .line 1419
    .local v13, offset:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v18

    .line 1420
    .local v18, sessionId:B
    add-int/lit8 v13, v13, 0x1

    .line 1421
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v19

    .line 1422
    .local v19, transactionId:B
    add-int/lit8 v13, v13, 0x1

    .line 1424
    const/16 v20, 0x1e

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v14

    .line 1428
    .local v14, r:Lcom/motorola/android/locationproxy/SuplRequest;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/motorola/android/locationproxy/SuplRequest;->serialString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "> "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-byte v0, v14, Lcom/motorola/android/locationproxy/SuplRequest;->mSubCommandId:B

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/motorola/android/locationproxy/Supl;->SubCommandIdToString(B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    .line 1430
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 1431
    .local v17, result:[Ljava/lang/Object;
    const/16 v20, 0x0

    iget v0, v14, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v17, v20

    .line 1434
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v12

    .line 1435
    .local v12, notifyType:I
    const/16 v20, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v17, v20

    .line 1436
    add-int/lit8 v13, v13, 0x4

    .line 1439
    const/16 v20, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v17, v20

    .line 1440
    add-int/lit8 v13, v13, 0x4

    .line 1445
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v9

    .line 1446
    .local v9, codingSchema:B
    add-int/lit8 v13, v13, 0x1

    .line 1448
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v11

    .line 1449
    .local v11, length:B
    add-int/lit8 v13, v13, 0x1

    .line 1450
    const-string v15, ""

    .line 1451
    .local v15, requestorId:Ljava/lang/String;
    if-lez v11, :cond_0

    .line 1453
    :try_start_0
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v11}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/motorola/android/locationproxy/Supl;->convertUcs2ToUtf8([B)[B

    move-result-object v20

    const-string v21, "UTF8"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v15           #requestorId:Ljava/lang/String;
    .local v16, requestorId:Ljava/lang/String;
    move-object/from16 v15, v16

    .line 1457
    .end local v16           #requestorId:Ljava/lang/String;
    .restart local v15       #requestorId:Ljava/lang/String;
    :goto_0
    add-int/lit8 v13, v11, 0xd

    .line 1459
    :cond_0
    const/16 v20, 0x3

    aput-object v15, v17, v20

    .line 1462
    const/16 v20, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    aput-object v21, v17, v20

    .line 1463
    add-int/lit8 v13, v13, 0x1

    .line 1466
    const-string v6, ""

    .line 1467
    .local v6, clientName:Ljava/lang/String;
    const/16 v20, 0xff

    move/from16 v0, v20

    if-eq v9, v0, :cond_1

    .line 1468
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v11

    .line 1469
    add-int/lit8 v13, v13, 0x1

    .line 1470
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v11}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v8

    .line 1471
    .local v8, clientNameBuf:[B
    add-int/2addr v13, v11

    .line 1473
    :try_start_1
    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/motorola/android/locationproxy/Supl;->convertUcs2ToUtf8([B)[B

    move-result-object v20

    const-string v21, "UTF8"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v7, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6           #clientName:Ljava/lang/String;
    .local v7, clientName:Ljava/lang/String;
    move-object v6, v7

    .line 1479
    .end local v7           #clientName:Ljava/lang/String;
    .end local v8           #clientNameBuf:[B
    .restart local v6       #clientName:Ljava/lang/String;
    :cond_1
    :goto_1
    const/16 v20, 0x5

    aput-object v6, v17, v20

    .line 1482
    const/16 v20, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    aput-object v21, v17, v20

    .line 1483
    add-int/lit8 v13, v13, 0x1

    .line 1486
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v11

    .line 1487
    add-int/lit8 v13, v13, 0x1

    .line 1488
    const-string v5, ""

    .line 1489
    .local v5, clientExtAddr:Ljava/lang/String;
    if-lez v11, :cond_2

    .line 1490
    new-instance v5, Ljava/lang/String;

    .end local v5           #clientExtAddr:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v11}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 1492
    .restart local v5       #clientExtAddr:Ljava/lang/String;
    :cond_2
    const/16 v20, 0x7

    aput-object v5, v17, v20

    .line 1494
    if-eqz v12, :cond_3

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 1496
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1497
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1500
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlr2Registrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1501
    return-void

    .line 1454
    .end local v5           #clientExtAddr:Ljava/lang/String;
    .end local v6           #clientName:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1455
    .local v10, ex:Ljava/io/UnsupportedEncodingException;
    const-string v20, "SUPLJ"

    const-string v21, "Unsupported Encoding: "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1474
    .end local v10           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v6       #clientName:Ljava/lang/String;
    .restart local v8       #clientNameBuf:[B
    :catch_1
    move-exception v10

    .line 1475
    .restart local v10       #ex:Ljava/io/UnsupportedEncodingException;
    const-string v20, "SUPLJ"

    const-string v21, "Unsupported Encoding: "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1497
    .end local v8           #clientNameBuf:[B
    .end local v10           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #clientExtAddr:Ljava/lang/String;
    :catchall_0
    move-exception v20

    :try_start_3
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v20
.end method

.method private processMtlrRequest(Landroid/os/Parcel;)V
    .locals 21
    .parameter "p"

    .prologue
    .line 1302
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 1303
    .local v3, buf:[B
    const/4 v12, 0x1

    .line 1304
    .local v12, offset:I
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v15

    .line 1305
    .local v15, sessionId:B
    add-int/lit8 v12, v12, 0x1

    .line 1306
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v16

    .line 1307
    .local v16, transactionId:B
    add-int/lit8 v12, v12, 0x1

    .line 1309
    const/16 v17, 0x13

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-static {v0, v15, v1, v2}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v13

    .line 1314
    .local v13, r:Lcom/motorola/android/locationproxy/SuplRequest;
    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/Object;

    .line 1315
    .local v14, result:[Ljava/lang/Object;
    const/16 v17, 0x0

    iget v0, v13, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v14, v17

    .line 1318
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v11

    .line 1319
    .local v11, notifyType:I
    const/16 v17, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v14, v17

    .line 1320
    add-int/lit8 v12, v12, 0x4

    .line 1323
    const/16 v17, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v14, v17

    .line 1324
    add-int/lit8 v12, v12, 0x4

    .line 1330
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v8

    .line 1331
    .local v8, codingSchema:B
    add-int/lit8 v12, v12, 0x1

    .line 1333
    const-string v5, ""

    .line 1335
    .local v5, clientName:Ljava/lang/String;
    const/16 v17, 0xff

    move/from16 v0, v17

    if-eq v8, v0, :cond_0

    .line 1336
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v10, v0, 0xff

    .line 1337
    .local v10, length:I
    add-int/lit8 v12, v12, 0x1

    .line 1338
    if-lez v10, :cond_0

    .line 1339
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12, v10}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v7

    .line 1340
    .local v7, clientNameBuf:[B
    add-int/lit8 v12, v10, 0xd

    .line 1342
    :try_start_0
    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/motorola/android/locationproxy/Supl;->convertUcs2ToUtf8([B)[B

    move-result-object v17

    const-string v18, "UTF8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #clientName:Ljava/lang/String;
    .local v6, clientName:Ljava/lang/String;
    move-object v5, v6

    .line 1350
    .end local v6           #clientName:Ljava/lang/String;
    .end local v7           #clientNameBuf:[B
    .end local v10           #length:I
    .restart local v5       #clientName:Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v17, 0x3

    aput-object v5, v14, v17

    .line 1353
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v10

    .line 1354
    .local v10, length:B
    add-int/lit8 v12, v12, 0x1

    .line 1355
    const-string v4, ""

    .line 1356
    .local v4, clientExtAddr:Ljava/lang/String;
    if-lez v10, :cond_1

    .line 1357
    new-instance v4, Ljava/lang/String;

    .end local v4           #clientExtAddr:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12, v10}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 1359
    .restart local v4       #clientExtAddr:Ljava/lang/String;
    :cond_1
    const/16 v17, 0x4

    aput-object v4, v14, v17

    .line 1361
    if-eqz v11, :cond_2

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1363
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1370
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlrRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v14, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1371
    return-void

    .line 1343
    .end local v4           #clientExtAddr:Ljava/lang/String;
    .restart local v7       #clientNameBuf:[B
    .local v10, length:I
    :catch_0
    move-exception v9

    .line 1344
    .local v9, ex:Ljava/io/UnsupportedEncodingException;
    const-string v17, "SUPLJ"

    const-string v18, "Unsupported Encoding"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1364
    .end local v7           #clientNameBuf:[B
    .end local v9           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v4       #clientExtAddr:Ljava/lang/String;
    .local v10, length:B
    :catchall_0
    move-exception v17

    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v17

    .line 1367
    :cond_2
    invoke-virtual {v13}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    goto :goto_1
.end method

.method private processMtlrStatus(Landroid/os/Parcel;)V
    .locals 9
    .parameter "p"

    .prologue
    const/4 v8, 0x0

    .line 1506
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 1507
    .local v0, buf:[B
    const/4 v1, 0x1

    .line 1508
    .local v1, offset:I
    invoke-direct {p0, v0, v1}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v4

    .line 1509
    .local v4, sessionId:B
    add-int/lit8 v1, v1, 0x1

    .line 1510
    invoke-direct {p0, v0, v1}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v5

    .line 1511
    .local v5, transactionId:B
    add-int/lit8 v1, v1, 0x1

    .line 1513
    const/16 v6, 0x13

    invoke-direct {p0, v4, v5, v6}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(BBB)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .line 1516
    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    if-nez v2, :cond_0

    .line 1517
    const/16 v6, 0x20

    invoke-direct {p0, v4, v5, v6}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(BBB)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .line 1522
    :cond_0
    if-nez v2, :cond_1

    .line 1523
    const-string v6, "SUPLJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MTLR request doesnot exist! sessiionId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "transactionId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :goto_0
    return-void

    .line 1528
    :cond_1
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Object;

    .line 1529
    .local v3, result:[Ljava/lang/Object;
    const/4 v6, 0x0

    iget v7, v2, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    .line 1530
    const/4 v6, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    .line 1532
    iget-object v6, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlrStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v7, Landroid/os/AsyncResult;

    invoke-direct {v7, v8, v3, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1533
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    goto :goto_0
.end method

.method private processOpenSocketRequest(Landroid/os/Parcel;)V
    .locals 12
    .parameter "p"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    .line 1087
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 1088
    .local v0, buf:[B
    const/4 v3, 0x1

    .line 1089
    .local v3, offset:I
    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v6

    .line 1090
    .local v6, sessionId:B
    add-int/lit8 v3, v3, 0x1

    .line 1091
    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v7

    .line 1092
    .local v7, transactionId:B
    add-int/lit8 v3, v3, 0x1

    .line 1094
    const/16 v8, 0x9

    invoke-static {v8, v6, v7, v10}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v4

    .line 1098
    .local v4, r:Lcom/motorola/android/locationproxy/SuplRequest;
    iget-object v9, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1099
    :try_start_0
    iget-object v8, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    const/4 v8, 0x6

    new-array v5, v8, [Ljava/lang/Object;

    .line 1103
    .local v5, result:[Ljava/lang/Object;
    const/4 v8, 0x0

    iget v9, v4, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    .line 1105
    const/4 v8, 0x1

    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    .line 1106
    add-int/lit8 v3, v3, 0x4

    .line 1108
    const/4 v8, 0x2

    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    .line 1109
    add-int/lit8 v3, v3, 0x4

    .line 1111
    const/4 v8, 0x3

    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readShort([BI)S

    move-result v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v5, v8

    .line 1112
    add-int/lit8 v3, v3, 0x2

    .line 1114
    const/4 v8, 0x4

    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    .line 1115
    add-int/lit8 v3, v3, 0x4

    .line 1117
    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v8

    and-int/lit16 v2, v8, 0xff

    .line 1118
    .local v2, dnsLength:I
    add-int/lit8 v3, v3, 0x1

    .line 1119
    if-lez v2, :cond_0

    .line 1120
    invoke-direct {p0, v0, v3, v2}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v1

    .line 1121
    .local v1, dns:[B
    aput-object v1, v5, v11

    .line 1125
    .end local v1           #dns:[B
    :goto_0
    iget-object v8, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mOpenSocketRegistrants:Landroid/os/RegistrantList;

    new-instance v9, Landroid/os/AsyncResult;

    invoke-direct {v9, v10, v5, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v8, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1126
    return-void

    .line 1100
    .end local v2           #dnsLength:I
    .end local v5           #result:[Ljava/lang/Object;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1123
    .restart local v2       #dnsLength:I
    .restart local v5       #result:[Ljava/lang/Object;
    :cond_0
    aput-object v10, v5, v11

    goto :goto_0
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .locals 5
    .parameter "p"

    .prologue
    .line 870
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 872
    .local v0, msg:[B
    const/4 v2, 0x0

    aget-byte v1, v0, v2

    .line 874
    .local v1, subCommandId:B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handle SubCMD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/motorola/android/locationproxy/Supl;->SubCommandIdToString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    .line 876
    sparse-switch v1, :sswitch_data_0

    .line 919
    const-string v2, "SUPLJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid supl event"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/locationproxy/Supl;->SubCommandIdToString(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :goto_0
    return-void

    .line 878
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processDbWriteResult(Landroid/os/Parcel;)V

    goto :goto_0

    .line 882
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processDbReadResult(Landroid/os/Parcel;)V

    goto :goto_0

    .line 886
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processOpenSocketRequest(Landroid/os/Parcel;)V

    goto :goto_0

    .line 890
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processSocketDataRequest(Landroid/os/Parcel;)V

    goto :goto_0

    .line 894
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processCloseSocketRequest(Landroid/os/Parcel;)V

    goto :goto_0

    .line 898
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processTlsSessionRequest(Landroid/os/Parcel;)V

    goto :goto_0

    .line 902
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processMtlrRequest(Landroid/os/Parcel;)V

    goto :goto_0

    .line 906
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processMtlr2Request(Landroid/os/Parcel;)V

    goto :goto_0

    .line 910
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processMtlrStatus(Landroid/os/Parcel;)V

    goto :goto_0

    .line 914
    :sswitch_9
    const-string v2, "SUPLJ"

    const-string v3, "TIPC_GPS_HTTP_POST_FILE_BPAP_REQ"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->processHttpPostRequest(Landroid/os/Parcel;)V

    goto :goto_0

    .line 876
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x7 -> :sswitch_1
        0x9 -> :sswitch_2
        0xb -> :sswitch_3
        0xe -> :sswitch_4
        0x13 -> :sswitch_6
        0x15 -> :sswitch_8
        0x1e -> :sswitch_5
        0x20 -> :sswitch_7
        0x21 -> :sswitch_9
    .end sparse-switch
.end method

.method private processSocketDataRequest(Landroid/os/Parcel;)V
    .locals 12
    .parameter "p"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 1130
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 1131
    .local v0, buf:[B
    const/4 v3, 0x1

    .line 1132
    .local v3, offset:I
    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v6

    .line 1133
    .local v6, sessionId:B
    add-int/lit8 v3, v3, 0x1

    .line 1134
    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v7

    .line 1135
    .local v7, transactionId:B
    add-int/lit8 v3, v3, 0x1

    .line 1137
    const/16 v8, 0xb

    invoke-static {v8, v6, v7, v10}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v4

    .line 1141
    .local v4, r:Lcom/motorola/android/locationproxy/SuplRequest;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/motorola/android/locationproxy/SuplRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, v4, Lcom/motorola/android/locationproxy/SuplRequest;->mSubCommandId:B

    invoke-static {v9}, Lcom/motorola/android/locationproxy/Supl;->SubCommandIdToString(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    .line 1142
    iget-object v9, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1143
    :try_start_0
    iget-object v8, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1144
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    const/4 v8, 0x3

    new-array v5, v8, [Ljava/lang/Object;

    .line 1147
    .local v5, result:[Ljava/lang/Object;
    const/4 v8, 0x0

    iget v9, v4, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    .line 1150
    const/4 v8, 0x1

    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    .line 1151
    add-int/lit8 v3, v3, 0x4

    .line 1154
    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v2

    .line 1155
    .local v2, dataLength:I
    add-int/lit8 v3, v3, 0x4

    .line 1156
    if-lez v2, :cond_0

    .line 1157
    invoke-direct {p0, v0, v3, v2}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v1

    .line 1158
    .local v1, data:[B
    aput-object v1, v5, v11

    .line 1163
    .end local v1           #data:[B
    :goto_0
    iget-object v8, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mSocketDataRegistrants:Landroid/os/RegistrantList;

    new-instance v9, Landroid/os/AsyncResult;

    invoke-direct {v9, v10, v5, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v8, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1164
    return-void

    .line 1144
    .end local v2           #dataLength:I
    .end local v5           #result:[Ljava/lang/Object;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1160
    .restart local v2       #dataLength:I
    .restart local v5       #result:[Ljava/lang/Object;
    :cond_0
    aput-object v10, v5, v11

    .line 1161
    const-string v8, "SUPLJ"

    const-string v9, "No data to be fwd"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processTlsSessionRequest(Landroid/os/Parcel;)V
    .locals 12
    .parameter "p"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 1196
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 1197
    .local v0, buf:[B
    const/4 v3, 0x1

    .line 1198
    .local v3, offset:I
    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v6

    .line 1199
    .local v6, sessionId:B
    add-int/lit8 v3, v3, 0x1

    .line 1200
    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v7

    .line 1201
    .local v7, transactionId:B
    add-int/lit8 v3, v3, 0x1

    .line 1203
    const/16 v8, 0x1e

    invoke-static {v8, v6, v7, v10}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v4

    .line 1207
    .local v4, r:Lcom/motorola/android/locationproxy/SuplRequest;
    iget-object v9, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1208
    :try_start_0
    iget-object v8, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    const/4 v8, 0x3

    new-array v5, v8, [Ljava/lang/Object;

    .line 1212
    .local v5, result:[Ljava/lang/Object;
    const/4 v8, 0x0

    iget v9, v4, Lcom/motorola/android/locationproxy/SuplRequest;->mSerial:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    .line 1215
    const/4 v8, 0x1

    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readInt([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    .line 1216
    add-int/lit8 v3, v3, 0x4

    .line 1219
    invoke-direct {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readByte([BI)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v2, v8, -0x1

    .line 1220
    .local v2, fqdnLength:I
    add-int/lit8 v3, v3, 0x1

    .line 1221
    if-lez v2, :cond_0

    .line 1222
    invoke-direct {p0, v0, v3, v2}, Lcom/motorola/android/locationproxy/Supl;->readByteArray([BII)[B

    move-result-object v1

    .line 1223
    .local v1, fqdn:[B
    aput-object v1, v5, v11

    .line 1229
    .end local v1           #fqdn:[B
    :goto_0
    iget-object v8, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mTlsRegistrants:Landroid/os/RegistrantList;

    new-instance v9, Landroid/os/AsyncResult;

    invoke-direct {v9, v10, v5, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v8, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1230
    return-void

    .line 1209
    .end local v2           #fqdnLength:I
    .end local v5           #result:[Ljava/lang/Object;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1225
    .restart local v2       #fqdnLength:I
    .restart local v5       #result:[Ljava/lang/Object;
    :cond_0
    const-string v8, "LOG_TAG"

    const-string v9, "fqdn length is 0"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    aput-object v10, v5, v11

    goto :goto_0
.end method

.method private readByte([BI)B
    .locals 1
    .parameter "buf"
    .parameter "offset"

    .prologue
    .line 964
    aget-byte v0, p1, p2

    return v0
.end method

.method private readByteArray([BII)[B
    .locals 4
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 968
    new-array v2, p3, [B

    .line 969
    .local v2, val:[B
    const/4 v0, 0x0

    .local v0, i:I
    move v1, p2

    .end local p2
    .local v1, offset:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 970
    add-int/lit8 p2, v1, 0x1

    .end local v1           #offset:I
    .restart local p2
    aget-byte v3, p1, v1

    aput-byte v3, v2, v0

    .line 969
    add-int/lit8 v0, v0, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #offset:I
    goto :goto_0

    .line 972
    :cond_0
    return-object v2
.end method

.method private static readCommandId(Ljava/io/InputStream;)B
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 253
    new-array v0, v3, [B

    .line 254
    .local v0, buf:[B
    invoke-static {p0, v0, v3}, Lcom/motorola/android/locationproxy/Supl;->readSocket(Ljava/io/InputStream;[BI)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 255
    const-string v2, "SUPLJ"

    const-string v3, "Reading CommandID Error"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    return v1

    :cond_0
    aget-byte v1, v0, v1

    goto :goto_0
.end method

.method private readInt([BI)I
    .locals 3
    .parameter "buf"
    .parameter "offset"

    .prologue
    .line 983
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, offset:I
    aget-byte v2, p1, p2

    and-int/lit16 v1, v2, 0xff

    .line 984
    .local v1, val:I
    shl-int/lit8 v1, v1, 0x8

    .line 985
    add-int/lit8 p2, v0, 0x1

    .end local v0           #offset:I
    .restart local p2
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 986
    shl-int/lit8 v1, v1, 0x8

    .line 987
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #offset:I
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 988
    shl-int/lit8 v1, v1, 0x8

    .line 989
    add-int/lit8 p2, v0, 0x1

    .end local v0           #offset:I
    .restart local p2
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 990
    return v1
.end method

.method private static readMessageLength(Ljava/io/InputStream;)S
    .locals 5
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 263
    new-array v0, v4, [B

    .line 264
    .local v0, buf:[B
    invoke-static {p0, v0, v4}, Lcom/motorola/android/locationproxy/Supl;->readSocket(Ljava/io/InputStream;[BI)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 265
    const-string v3, "SUPLJ"

    const-string v4, "Reading Message Length ERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 273
    :goto_0
    return v1

    .line 269
    :cond_0
    const/4 v1, 0x0

    .line 270
    .local v1, length:S
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v1

    int-to-short v1, v2

    .line 271
    shl-int/lit8 v2, v1, 0x8

    int-to-short v1, v2

    .line 272
    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v1

    int-to-short v1, v2

    .line 273
    goto :goto_0
.end method

.method private readShort([BI)S
    .locals 3
    .parameter "buf"
    .parameter "offset"

    .prologue
    .line 976
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, offset:I
    aget-byte v2, p1, p2

    and-int/lit16 v1, v2, 0xff

    .line 977
    .local v1, val:I
    shl-int/lit8 v1, v1, 0x8

    .line 978
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 979
    const v2, 0xffff

    and-int/2addr v2, v1

    int-to-short v2, v2

    return v2
.end method

.method private static readSocket(Ljava/io/InputStream;[BI)I
    .locals 5
    .parameter "is"
    .parameter "buffer"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, countRead:I
    const/4 v1, 0x0

    .line 235
    .local v1, offset:I
    move v2, p2

    .line 238
    .local v2, remaining:I
    :cond_0
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 240
    if-gez v0, :cond_1

    .line 241
    const-string v3, "SUPLJ"

    const-string v4, "Reading Socket ERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v3, -0x1

    .line 248
    :goto_0
    return v3

    .line 245
    :cond_1
    add-int/2addr v1, v0

    .line 246
    sub-int/2addr v2, v0

    .line 247
    if-gtz v2, :cond_0

    .line 248
    sub-int v3, p2, v2

    goto :goto_0
.end method

.method private static readSuplMessage(Ljava/io/InputStream;[B)I
    .locals 6
    .parameter "is"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 280
    invoke-static {p0}, Lcom/motorola/android/locationproxy/Supl;->readCommandId(Ljava/io/InputStream;)B

    move-result v3

    const/16 v4, 0x50

    if-eq v3, v4, :cond_1

    .line 281
    const-string v3, "SUPLJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    invoke-static {p0}, Lcom/motorola/android/locationproxy/Supl;->readMessageLength(Ljava/io/InputStream;)S

    move-result v1

    .line 287
    .local v1, messageLength:I
    const-string v3, "SUPLJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    add-int/lit8 v0, v1, -0x5

    .line 290
    .local v0, bodyLength:I
    add-int/lit8 v3, v0, 0x2

    invoke-static {p0, p1, v3}, Lcom/motorola/android/locationproxy/Supl;->readSocket(Ljava/io/InputStream;[BI)I

    .line 292
    aget-byte v3, p1, v0

    const/16 v4, -0x31

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    const/16 v4, -0x50

    if-eq v3, v4, :cond_0

    .line 294
    :cond_2
    const-string v3, "SUPLJ"

    const-string v4, "NO tail marker"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 295
    goto :goto_0
.end method

.method private send(Lcom/motorola/android/locationproxy/SuplRequest;)V
    .locals 6
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 852
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/locationproxy/Supl;->mSocket:Landroid/net/LocalSocket;

    .line 853
    .local v2, s:Landroid/net/LocalSocket;
    if-nez v2, :cond_0

    .line 866
    :goto_0
    return-void

    .line 857
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/android/locationproxy/SuplRequest;->getData()[B

    move-result-object v0

    .line 858
    .local v0, data:[B
    invoke-direct {p0, v0}, Lcom/motorola/android/locationproxy/Supl;->logSuplApBpRequest([B)V

    .line 860
    const-string v3, "SUPLJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writing packet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 862
    .end local v0           #data:[B
    .end local v2           #s:Landroid/net/LocalSocket;
    :catch_0
    move-exception v1

    .line 863
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "SUPLJ"

    const-string v4, "IOException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 864
    throw v1
.end method

.method private suplLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1564
    const-string v0, "SUPLJ"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    return-void
.end method


# virtual methods
.method public forwardSocketData(I[BI)V
    .locals 7
    .parameter "linkId"
    .parameter "data"
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    .line 534
    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-static {v4, v6, v6, v5}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v3

    .line 539
    .local v3, r:Lcom/motorola/android/locationproxy/SuplRequest;
    array-length v0, p2

    .line 547
    .local v0, dataLength:I
    sget v4, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x4

    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v2, v4, v5

    .line 548
    .local v2, length:I
    invoke-virtual {v3, v2}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    .line 549
    invoke-virtual {v3, v6}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    .line 551
    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    .line 552
    invoke-virtual {v3, p1}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    .line 553
    invoke-virtual {v3, v0}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    .line 554
    invoke-virtual {v3, p2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeByteArray([B)V

    .line 555
    invoke-virtual {v3, p3}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    .line 556
    const/16 v4, -0x3050

    invoke-virtual {v3, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    .line 558
    :try_start_0
    invoke-direct {p0, v3}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_0
    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    .line 563
    return-void

    .line 559
    :catch_0
    move-exception v1

    .line 560
    .local v1, ex:Ljava/io/IOException;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->onError(I)V

    goto :goto_0
.end method

.method public getDefaultConfigFQDN()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 697
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 698
    .local v3, result:Landroid/os/Message;
    const/4 v5, 0x6

    invoke-direct {p0}, Lcom/motorola/android/locationproxy/Supl;->generateSessionID()B

    move-result v6

    invoke-direct {p0}, Lcom/motorola/android/locationproxy/Supl;->generateTransactionId()B

    move-result v7

    invoke-static {v5, v6, v7, v3}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .line 707
    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v5, v5, 0x4

    sget v6, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v1, v5, v6

    .line 708
    .local v1, length:I
    invoke-virtual {v2, v1}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    .line 709
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    .line 711
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    .line 712
    const/high16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    .line 713
    const/16 v5, -0x3050

    invoke-virtual {v2, v5}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    .line 716
    sget-object v5, Lcom/motorola/android/locationproxy/Supl;->sFqdnReadLock:Ljava/lang/Object;

    monitor-enter v5

    .line 717
    :try_start_0
    iget-object v6, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    :try_start_1
    invoke-direct {p0, v2}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V

    .line 720
    iget-object v7, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 726
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 728
    :try_start_3
    sget-object v6, Lcom/motorola/android/locationproxy/Supl;->sFqdnReadLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 734
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 736
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 737
    iget-object v4, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnAddr:Ljava/lang/String;

    :goto_0
    return-object v4

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, ex:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    .line 723
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 724
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v5

    goto :goto_0

    .line 734
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    .line 726
    :catchall_1
    move-exception v4

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v4

    .line 729
    :catch_1
    move-exception v0

    .line 730
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v6, "SUPLJ"

    const-string v7, "got InterruptedException!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 732
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0
.end method

.method public getUserConfigFQDN()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 741
    const-string v5, "Getting user config FQDN"

    invoke-direct {p0, v5}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    .line 742
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 743
    .local v3, result:Landroid/os/Message;
    const/4 v5, 0x6

    invoke-direct {p0}, Lcom/motorola/android/locationproxy/Supl;->generateSessionID()B

    move-result v6

    invoke-direct {p0}, Lcom/motorola/android/locationproxy/Supl;->generateTransactionId()B

    move-result v7

    invoke-static {v5, v6, v7, v3}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .line 752
    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v5, v5, 0x4

    sget v6, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v1, v5, v6

    .line 753
    .local v1, length:I
    invoke-virtual {v2, v1}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    .line 754
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    .line 756
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    .line 757
    const/high16 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    .line 758
    const/16 v5, -0x3050

    invoke-virtual {v2, v5}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    .line 761
    sget-object v5, Lcom/motorola/android/locationproxy/Supl;->sFqdnReadLock:Ljava/lang/Object;

    monitor-enter v5

    .line 762
    :try_start_0
    iget-object v6, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    :try_start_1
    invoke-direct {p0, v2}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V

    .line 765
    iget-object v7, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 771
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 773
    :try_start_3
    sget-object v6, Lcom/motorola/android/locationproxy/Supl;->sFqdnReadLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 779
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 781
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 782
    iget-object v4, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnAddr:Ljava/lang/String;

    :goto_0
    return-object v4

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, ex:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    .line 768
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 769
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v5

    goto :goto_0

    .line 779
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    .line 771
    :catchall_1
    move-exception v4

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v4

    .line 774
    :catch_1
    move-exception v0

    .line 775
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v6, "SUPLJ"

    const-string v7, "got InterruptedException!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 777
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0
.end method

.method public sendCloseSocketResult(III)V
    .locals 8
    .parameter "id"
    .parameter "linkId"
    .parameter "result"

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(I)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v3

    .line 470
    .local v3, req:Lcom/motorola/android/locationproxy/SuplRequest;
    if-nez v3, :cond_0

    .line 471
    const-string v4, "SUPLJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :goto_0
    return-void

    .line 475
    :cond_0
    const/16 v4, 0xf

    iget-byte v5, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mSessionId:B

    iget-byte v6, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mTransactionId:B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .line 479
    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    .line 485
    sget v4, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x4

    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v1, v4, v5

    .line 486
    .local v1, length:I
    invoke-virtual {v2, v1}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    .line 487
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    .line 488
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    .line 489
    invoke-virtual {v2, p2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    .line 490
    invoke-virtual {v2, p3}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    .line 491
    const/16 v4, -0x3050

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    .line 494
    :try_start_0
    invoke-direct {p0, v2}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_1
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, ex:Ljava/io/IOException;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->onError(I)V

    goto :goto_1
.end method

.method public sendHttpResult(IIB)V
    .locals 8
    .parameter "id"
    .parameter "linkId"
    .parameter "http_result"

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(I)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v3

    .line 634
    .local v3, req:Lcom/motorola/android/locationproxy/SuplRequest;
    if-nez v3, :cond_0

    .line 635
    const-string v4, "SUPLJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :goto_0
    return-void

    .line 639
    :cond_0
    const/16 v4, 0x22

    iget-byte v5, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mSessionId:B

    iget-byte v6, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mTransactionId:B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .line 643
    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    .line 649
    sget v4, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v4, v4, 0x1

    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v1, v4, v5

    .line 650
    .local v1, length:I
    invoke-virtual {v2, v1}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    .line 651
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    .line 653
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    .line 654
    invoke-virtual {v2, p3}, Lcom/motorola/android/locationproxy/SuplRequest;->writeByte(B)V

    .line 655
    const/16 v4, -0x3050

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    .line 658
    :try_start_0
    invoke-direct {p0, v2}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :goto_1
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    goto :goto_0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, ex:Ljava/io/IOException;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->onError(I)V

    goto :goto_1
.end method

.method public sendLocationRequestResponse(II)V
    .locals 8
    .parameter "id"
    .parameter "response_type"

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(I)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v3

    .line 567
    .local v3, req:Lcom/motorola/android/locationproxy/SuplRequest;
    if-nez v3, :cond_0

    .line 568
    const-string v4, "SUPLJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :goto_0
    return-void

    .line 572
    :cond_0
    const/16 v4, 0x14

    iget-byte v5, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mSessionId:B

    iget-byte v6, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mTransactionId:B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .line 576
    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    .line 583
    sget v4, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v4, v4, 0x4

    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v1, v4, v5

    .line 584
    .local v1, length:I
    invoke-virtual {v2, v1}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    .line 585
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    .line 587
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    .line 588
    invoke-virtual {v2, p2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    .line 589
    const/16 v4, -0x3050

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    .line 591
    :try_start_0
    invoke-direct {p0, v2}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_1
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, ex:Ljava/io/IOException;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->onError(I)V

    goto :goto_1
.end method

.method public sendOpenSocketResult(III)V
    .locals 8
    .parameter "id"
    .parameter "linkId"
    .parameter "result"

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(I)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v3

    .line 435
    .local v3, req:Lcom/motorola/android/locationproxy/SuplRequest;
    if-nez v3, :cond_0

    .line 436
    const-string v4, "SUPLJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_0
    return-void

    .line 440
    :cond_0
    const/16 v4, 0xa

    iget-byte v5, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mSessionId:B

    iget-byte v6, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mTransactionId:B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .line 444
    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    .line 451
    sget v4, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x4

    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v1, v4, v5

    .line 452
    .local v1, length:I
    invoke-virtual {v2, v1}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    .line 453
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    .line 454
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    .line 455
    invoke-virtual {v2, p2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    .line 456
    invoke-virtual {v2, p3}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    .line 457
    const/16 v4, -0x3050

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    .line 460
    :try_start_0
    invoke-direct {p0, v2}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_1
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, ex:Ljava/io/IOException;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->onError(I)V

    goto :goto_1
.end method

.method public sendSocketDataResult(III)V
    .locals 8
    .parameter "id"
    .parameter "linkId"
    .parameter "result"

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(I)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v3

    .line 503
    .local v3, req:Lcom/motorola/android/locationproxy/SuplRequest;
    if-nez v3, :cond_0

    .line 504
    const-string v4, "SUPLJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :goto_0
    return-void

    .line 508
    :cond_0
    const/16 v4, 0xc

    iget-byte v5, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mSessionId:B

    iget-byte v6, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mTransactionId:B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .line 512
    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    .line 518
    sget v4, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x4

    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v1, v4, v5

    .line 519
    .local v1, length:I
    invoke-virtual {v2, v1}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    .line 520
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    .line 521
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    .line 522
    invoke-virtual {v2, p2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    .line 523
    invoke-virtual {v2, p3}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    .line 524
    const/16 v4, -0x3050

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    .line 526
    :try_start_0
    invoke-direct {p0, v2}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_1
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    goto :goto_0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, ex:Ljava/io/IOException;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->onError(I)V

    goto :goto_1
.end method

.method public sendTlsResult(IIB)V
    .locals 8
    .parameter "id"
    .parameter "linkId"
    .parameter "tls_result"

    .prologue
    .line 599
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/Supl;->findAndRemoveRequestFromList(I)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v3

    .line 600
    .local v3, req:Lcom/motorola/android/locationproxy/SuplRequest;
    if-nez v3, :cond_0

    .line 601
    const-string v4, "SUPLJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :goto_0
    return-void

    .line 605
    :cond_0
    const/16 v4, 0x1f

    iget-byte v5, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mSessionId:B

    iget-byte v6, v3, Lcom/motorola/android/locationproxy/SuplRequest;->mTransactionId:B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v2

    .line 609
    .local v2, r:Lcom/motorola/android/locationproxy/SuplRequest;
    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    .line 615
    sget v4, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x1

    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v1, v4, v5

    .line 616
    .local v1, length:I
    invoke-virtual {v2, v1}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    .line 617
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    .line 619
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    .line 620
    invoke-virtual {v2, p2}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    .line 621
    invoke-virtual {v2, p3}, Lcom/motorola/android/locationproxy/SuplRequest;->writeByte(B)V

    .line 622
    const/16 v4, -0x3050

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    .line 625
    :try_start_0
    invoke-direct {p0, v2}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :goto_1
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    goto :goto_0

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, ex:Ljava/io/IOException;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->onError(I)V

    goto :goto_1
.end method

.method public sendWapPushNotification([B)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Forward wap push data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/motorola/android/locationproxy/Supl;->suplLog(Ljava/lang/String;)V

    .line 667
    invoke-static {p1}, Lcom/motorola/android/locationproxy/Supl;->logHexData([B)V

    .line 669
    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-static {v4, v6, v6, v5}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v3

    .line 673
    .local v3, r:Lcom/motorola/android/locationproxy/SuplRequest;
    array-length v0, p1

    .line 680
    .local v0, dataLength:I
    sget v4, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    sget v5, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v2, v4, v5

    .line 681
    .local v2, length:I
    invoke-virtual {v3, v2}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    .line 682
    invoke-virtual {v3, v6}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    .line 684
    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    .line 685
    invoke-virtual {v3, v0}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    .line 686
    invoke-virtual {v3, p1}, Lcom/motorola/android/locationproxy/SuplRequest;->writeByteArray([B)V

    .line 687
    const/16 v4, -0x3050

    invoke-virtual {v3, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    .line 689
    :try_start_0
    invoke-direct {p0, v3}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_0
    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    .line 694
    return-void

    .line 690
    :catch_0
    move-exception v1

    .line 691
    .local v1, ex:Ljava/io/IOException;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/motorola/android/locationproxy/SuplRequest;->onError(I)V

    goto :goto_0
.end method

.method public setUserConfigFQDN(Ljava/lang/String;)Z
    .locals 10
    .parameter "newFQDN"

    .prologue
    const/4 v6, 0x0

    .line 797
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 798
    .local v5, result:Landroid/os/Message;
    const/4 v7, 0x4

    invoke-direct {p0}, Lcom/motorola/android/locationproxy/Supl;->generateSessionID()B

    move-result v8

    invoke-direct {p0}, Lcom/motorola/android/locationproxy/Supl;->generateTransactionId()B

    move-result v9

    invoke-static {v7, v8, v9, v5}, Lcom/motorola/android/locationproxy/SuplRequest;->obtain(BBBLandroid/os/Message;)Lcom/motorola/android/locationproxy/SuplRequest;

    move-result-object v4

    .line 803
    .local v4, r:Lcom/motorola/android/locationproxy/SuplRequest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 804
    .local v0, data:[B
    array-length v7, v0

    add-int/lit8 v1, v7, 0x1

    .line 811
    .local v1, dataLength:I
    sget v7, Lcom/motorola/android/locationproxy/SuplRequest;->sHeaderLength:I

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v1

    sget v8, Lcom/motorola/android/locationproxy/SuplRequest;->sTailLength:I

    add-int v3, v7, v8

    .line 812
    .local v3, length:I
    invoke-virtual {v4, v3}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataCapacity(I)V

    .line 813
    invoke-virtual {v4, v6}, Lcom/motorola/android/locationproxy/SuplRequest;->setDataPosition(I)V

    .line 815
    invoke-virtual {v4}, Lcom/motorola/android/locationproxy/SuplRequest;->writeHeader()V

    .line 816
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    .line 817
    const/high16 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/motorola/android/locationproxy/SuplRequest;->writeInt(I)V

    .line 818
    int-to-short v7, v1

    invoke-virtual {v4, v7}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    .line 819
    invoke-virtual {v4, v0}, Lcom/motorola/android/locationproxy/SuplRequest;->writeByteArray([B)V

    .line 820
    invoke-virtual {v4, v6}, Lcom/motorola/android/locationproxy/SuplRequest;->writeByte(B)V

    .line 821
    const/16 v7, -0x3050

    invoke-virtual {v4, v7}, Lcom/motorola/android/locationproxy/SuplRequest;->writeShort(S)V

    .line 823
    iput-boolean v6, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnWriteResult:Z

    .line 825
    sget-object v7, Lcom/motorola/android/locationproxy/Supl;->sFqdnWriteLock:Ljava/lang/Object;

    monitor-enter v7

    .line 826
    :try_start_0
    iget-object v8, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    :try_start_1
    invoke-direct {p0, v4}, Lcom/motorola/android/locationproxy/Supl;->send(Lcom/motorola/android/locationproxy/SuplRequest;)V

    .line 829
    iget-object v9, p0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 835
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 837
    :try_start_3
    sget-object v8, Lcom/motorola/android/locationproxy/Supl;->sFqdnWriteLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 843
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 845
    invoke-virtual {v5}, Landroid/os/Message;->recycle()V

    .line 846
    iget-boolean v6, p0, Lcom/motorola/android/locationproxy/Supl;->mFqdnWriteResult:Z

    :goto_0
    return v6

    .line 830
    :catch_0
    move-exception v2

    .line 831
    .local v2, ex:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v4}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V

    .line 832
    invoke-virtual {v5}, Landroid/os/Message;->recycle()V

    .line 833
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v7

    goto :goto_0

    .line 843
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v6

    .line 835
    :catchall_1
    move-exception v6

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v6

    .line 838
    :catch_1
    move-exception v2

    .line 839
    .local v2, ex:Ljava/lang/InterruptedException;
    const-string v8, "SUPLJ"

    const-string v9, "got InterruptedException!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-virtual {v5}, Landroid/os/Message;->recycle()V

    .line 841
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0
.end method
