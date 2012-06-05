.class Lcom/vzw/location/VzwGpsAuthMgr;
.super Ljava/lang/Object;
.source "VzwGpsAuthMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final APP_ID_COMMERCIAL_TRUST:I = 0x20000000

.field private static final APP_ID_TEST_TRUST:I = 0x50000000

.field private static final DEBUG:Z = true

.field private static final DEFAULT_HOST_COMMERCIAL_TRUST:Ljava/lang/String; = "mpc0.myvzw.com"

.field private static final DEFAULT_HOST_TEST_TRUST:Ljava/lang/String; = "pdeis801.vzwtest.com"

.field private static final DEFAULT_PORT_TRUST:I = 0x22b1

.field private static final FAIL:Z = false

.field private static final KEYSTORE_PASSWD:Ljava/lang/String; = "location"

.field private static final KEYSTORE_PATH:Ljava/lang/String; = "/system/etc/security/vzwlbspdecerts.bks"

.field private static final PASS:Z = true

.field private static final PDE_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "VzwGpsAuthMgr"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mImsi:Ljava/lang/String;

.field private final mMdn:Ljava/lang/String;

.field private final mNwMgr:Lcom/vzw/location/VzwGpsNwMgr;

.field private final mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

.field private final mReqQ:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/vzw/location/VzwGpsAuthRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSslClient:Lcom/vzw/location/SslClient;

.field private final mTelMgr:Landroid/telephony/TelephonyManager;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vzw/location/VzwGpsReqMgr;Lcom/vzw/location/VzwGpsNwMgr;)V
    .locals 5
    .parameter "context"
    .parameter "reqMgr"
    .parameter "nwMgr"

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v3, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mThread:Ljava/lang/Thread;

    .line 61
    iput-object p1, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    .line 63
    iput-object p3, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mNwMgr:Lcom/vzw/location/VzwGpsNwMgr;

    .line 64
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mReqQ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 67
    const-string v1, "/system/etc/security/vzwlbspdecerts.bks"

    const-string v2, "location"

    invoke-static {v1, v2}, Lcom/vzw/location/SslClient;->loadKeystore(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 68
    .local v0, ks:Ljava/security/KeyStore;
    if-nez v0, :cond_1

    .line 69
    const-string v1, "VzwGpsAuthMgr"

    const-string v2, "VzwGpsAuthMgr(): no keystore, so no ssl client!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iput-object v3, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mSslClient:Lcom/vzw/location/SslClient;

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 79
    iget-object v1, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mImsi:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mImsi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mImsi:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mImsi:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mImsi:Ljava/lang/String;

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mMdn:Ljava/lang/String;

    .line 87
    return-void

    .line 72
    :cond_1
    new-instance v1, Lcom/vzw/location/SslClient;

    new-instance v2, Lcom/vzw/location/PeerTrustManager;

    invoke-direct {v2, v0}, Lcom/vzw/location/PeerTrustManager;-><init>(Ljava/security/KeyStore;)V

    invoke-direct {v1, v2}, Lcom/vzw/location/SslClient;-><init>(Ljavax/net/ssl/TrustManager;)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mSslClient:Lcom/vzw/location/SslClient;

    .line 73
    iget-object v1, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mSslClient:Lcom/vzw/location/SslClient;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Lcom/vzw/location/SslClient;->setTimeout(I)Z

    goto :goto_0
.end method

.method private authDone(Lcom/vzw/location/VzwGpsAuthRequest;ZI)V
    .locals 1
    .parameter "authReq"
    .parameter "pass"
    .parameter "result"

    .prologue
    .line 202
    if-eqz p2, :cond_0

    .line 203
    invoke-virtual {p1, p3}, Lcom/vzw/location/VzwGpsAuthRequest;->setResult(I)V

    .line 204
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/vzw/location/VzwGpsAuthRequest;->setState(I)V

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v0, p1}, Lcom/vzw/location/VzwGpsReqMgr;->trigger_AuthDone(Lcom/vzw/location/VzwGpsAuthRequest;)V

    .line 211
    return-void

    .line 206
    :cond_0
    invoke-virtual {p1, p3}, Lcom/vzw/location/VzwGpsAuthRequest;->setResult(I)V

    .line 207
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/vzw/location/VzwGpsAuthRequest;->setState(I)V

    goto :goto_0
.end method

.method private authenticate(Lcom/vzw/location/VzwGpsAuthRequest;)Z
    .locals 13
    .parameter "authReq"

    .prologue
    const/4 v9, 0x1

    const/16 v12, 0x1c

    const/4 v8, 0x0

    .line 263
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwGpsAuthMgr;->buildEnLprReq(Lcom/vzw/location/VzwGpsAuthRequest;)Lcom/vzw/location/VzwEnLprRequest;

    move-result-object v6

    .line 264
    .local v6, req:Lcom/vzw/location/VzwEnLprRequest;
    if-nez v6, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v8

    .line 269
    :cond_1
    invoke-virtual {v6}, Lcom/vzw/location/VzwEnLprRequest;->encode()[B

    move-result-object v5

    .line 270
    .local v5, out:[B
    if-eqz v5, :cond_0

    .line 275
    iget-object v10, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mSslClient:Lcom/vzw/location/SslClient;

    invoke-virtual {v10, v5}, Lcom/vzw/location/SslClient;->write([B)I

    move-result v10

    array-length v11, v5

    if-ge v10, v11, :cond_2

    .line 276
    const-string v9, "VzwGpsAuthMgr"

    const-string v10, "authenticate(): failure sending enLpr request"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :cond_2
    new-array v3, v12, [B

    .line 283
    .local v3, in:[B
    iget-object v10, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mSslClient:Lcom/vzw/location/SslClient;

    invoke-virtual {v10, v3}, Lcom/vzw/location/SslClient;->read([B)I

    move-result v0

    .line 284
    .local v0, bytes:I
    if-ge v0, v12, :cond_3

    .line 285
    const-string v9, "VzwGpsAuthMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "authenticate(): enLpr response read: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", expected: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :cond_3
    new-instance v7, Lcom/vzw/location/VzwEnLprResponse;

    invoke-direct {v7, v3}, Lcom/vzw/location/VzwEnLprResponse;-><init>([B)V

    .line 294
    .local v7, rsp:Lcom/vzw/location/VzwEnLprResponse;
    invoke-virtual {v7}, Lcom/vzw/location/VzwEnLprResponse;->getCorrelationId()B

    move-result v10

    invoke-virtual {v6}, Lcom/vzw/location/VzwEnLprRequest;->getCorrelationId()B

    move-result v11

    if-eq v10, v11, :cond_4

    .line 295
    const-string v9, "VzwGpsAuthMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "correlation id mismatch, req: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/vzw/location/VzwEnLprRequest;->getCorrelationId()B

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", rsp: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/vzw/location/VzwEnLprResponse;->getCorrelationId()B

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    :cond_4
    invoke-virtual {v7}, Lcom/vzw/location/VzwEnLprResponse;->getAuthorization()B

    move-result v10

    if-eq v10, v9, :cond_5

    .line 302
    const-string v9, "VzwGpsAuthMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "app not authorized, posStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/vzw/location/VzwEnLprResponse;->getPosStatus()B

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 308
    :cond_5
    :try_start_0
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAuthRequest;->getCfgInit()Lcom/vzw/location/VzwGpsConfigInit;

    move-result-object v1

    .line 309
    .local v1, ci:Lcom/vzw/location/VzwGpsConfigInit;
    invoke-virtual {v7}, Lcom/vzw/location/VzwEnLprResponse;->getPdeIp()[B

    move-result-object v10

    invoke-static {v10}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    .line 310
    .local v4, ip:Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/vzw/location/VzwEnLprResponse;->getPdePort()S

    move-result v11

    invoke-virtual {v1, v10, v11}, Lcom/vzw/location/VzwGpsConfigInit;->setMpc(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    .line 316
    goto/16 :goto_0

    .line 311
    .end local v1           #ci:Lcom/vzw/location/VzwGpsConfigInit;
    .end local v4           #ip:Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    .line 312
    .local v2, e:Ljava/net/UnknownHostException;
    const-string v9, "VzwGpsAuthMgr"

    const-string v10, "authenticate(): UnknownHostException:"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private buildEnLprReq(Lcom/vzw/location/VzwGpsAuthRequest;)Lcom/vzw/location/VzwEnLprRequest;
    .locals 10
    .parameter "authReq"

    .prologue
    const/4 v6, 0x0

    .line 320
    new-instance v5, Lcom/vzw/location/VzwEnLprRequest;

    invoke-direct {v5}, Lcom/vzw/location/VzwEnLprRequest;-><init>()V

    .line 324
    .local v5, req:Lcom/vzw/location/VzwEnLprRequest;
    const/4 v3, 0x0

    .line 325
    .local v3, fixRate:Lcom/vzw/location/VzwGpsFixRate;
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAuthRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vzw/location/VzwGpsAppSession;->getGpsRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v4

    .line 326
    .local v4, gpsReq:Lcom/vzw/location/VzwGpsRequest;
    if-eqz v4, :cond_0

    .line 327
    invoke-virtual {v4}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v2

    .line 328
    .local v2, criteria:Lcom/vzw/location/VzwCriteria;
    if-eqz v2, :cond_0

    .line 329
    invoke-virtual {v2}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v3

    .line 333
    .end local v2           #criteria:Lcom/vzw/location/VzwCriteria;
    :cond_0
    if-nez v3, :cond_2

    .line 334
    const-wide v7, 0xffffffffL

    invoke-virtual {v5, v7, v8}, Lcom/vzw/location/VzwEnLprRequest;->setDuration(J)V

    .line 339
    :goto_0
    iget-object v7, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mImsi:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/vzw/location/VzwEnLprRequest;->setMsIdMin(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 340
    const-string v7, "VzwGpsAuthMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildEnLprReq(): invalid MIN/IMSI length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mImsi:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 364
    .end local v5           #req:Lcom/vzw/location/VzwEnLprRequest;
    :cond_1
    :goto_1
    return-object v5

    .line 336
    .restart local v5       #req:Lcom/vzw/location/VzwEnLprRequest;
    :cond_2
    invoke-virtual {v5, v3}, Lcom/vzw/location/VzwEnLprRequest;->setDuration(Lcom/vzw/location/VzwGpsFixRate;)V

    goto :goto_0

    .line 344
    :cond_3
    iget-object v7, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mMdn:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/vzw/location/VzwEnLprRequest;->setMsIdMdn(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 345
    const-string v7, "VzwGpsAuthMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildEnLprReq(): invalid MDN length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mMdn:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 346
    goto :goto_1

    .line 349
    :cond_4
    iget-object v7, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 350
    .local v0, cell:Landroid/telephony/CellLocation;
    instance-of v7, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v7, :cond_5

    .line 351
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v0           #cell:Landroid/telephony/CellLocation;
    invoke-virtual {v5, v0}, Lcom/vzw/location/VzwEnLprRequest;->setCellInfo(Landroid/telephony/cdma/CdmaCellLocation;)V

    .line 356
    :goto_2
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAuthRequest;->getCfgInit()Lcom/vzw/location/VzwGpsConfigInit;

    move-result-object v1

    .line 357
    .local v1, ci:Lcom/vzw/location/VzwGpsConfigInit;
    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsConfigInit;->getApplicationId()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v5, v7}, Lcom/vzw/location/VzwEnLprRequest;->setAppId(I)V

    .line 359
    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsConfigInit;->getApplicationPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/vzw/location/VzwEnLprRequest;->setPassword(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 360
    const-string v7, "VzwGpsAuthMgr"

    const-string v8, "buildEnLprReq(): failure setting password"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 361
    goto :goto_1

    .line 353
    .end local v1           #ci:Lcom/vzw/location/VzwGpsConfigInit;
    .restart local v0       #cell:Landroid/telephony/CellLocation;
    :cond_5
    const-string v7, "VzwGpsAuthMgr"

    const-string v8, "buildEnLprReq(): not CDMA, empty cell info"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private dnsResolve(Lcom/vzw/location/VzwGpsConfigInit;)Ljava/net/InetAddress;
    .locals 5
    .parameter "ci"

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 250
    .local v1, inetAddr:Ljava/net/InetAddress;
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mNwMgr:Lcom/vzw/location/VzwGpsNwMgr;

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vzw/location/VzwGpsNwMgr;->resolveHost(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcHost(Ljava/lang/String;)V

    move-object v2, v1

    .line 258
    :goto_0
    return-object v2

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v2, "VzwGpsAuthMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnknownHostException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private removeRequest()Lcom/vzw/location/VzwGpsAuthRequest;
    .locals 3

    .prologue
    .line 119
    const-string v1, "VzwGpsAuthMgr"

    const-string v2, "waiting for auth req..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mReqQ:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwGpsAuthRequest;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "VzwGpsAuthMgr"

    const-string v2, "removeRequest(): InterruptedException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setDefaultHost(Lcom/vzw/location/VzwGpsConfigInit;I)V
    .locals 4
    .parameter "ci"
    .parameter "appId"

    .prologue
    const/high16 v3, 0x5000

    const/high16 v2, 0x2000

    const/16 v1, 0x22b1

    .line 232
    and-int v0, p2, v2

    if-ne v0, v2, :cond_0

    .line 233
    const-string v0, "mpc0.myvzw.com"

    invoke-virtual {p1, v0, v1}, Lcom/vzw/location/VzwGpsConfigInit;->setMpc(Ljava/lang/String;I)V

    .line 242
    :goto_0
    const-string v0, "VzwGpsAuthMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set default host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 234
    :cond_0
    and-int v0, p2, v3

    if-ne v0, v3, :cond_1

    .line 235
    const-string v0, "pdeis801.vzwtest.com"

    invoke-virtual {p1, v0, v1}, Lcom/vzw/location/VzwGpsConfigInit;->setMpc(Ljava/lang/String;I)V

    goto :goto_0

    .line 238
    :cond_1
    const-string v0, "VzwGpsAuthMgr"

    const-string v1, "setDefaultHost(): should never reach here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcHost(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private validateCredentials(Lcom/vzw/location/VzwGpsConfigInit;)Z
    .locals 8
    .parameter "ci"

    .prologue
    const/high16 v7, 0x5000

    const/high16 v6, 0x2000

    const/4 v2, 0x0

    .line 214
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getApplicationId()J

    move-result-wide v3

    long-to-int v0, v3

    .line 215
    .local v0, appId:I
    const-string v3, "VzwGpsAuthMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "validateCredentials(): appId: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/vzw/location/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    and-int v3, v0, v6

    if-eq v3, v6, :cond_0

    and-int v3, v0, v7

    if-eq v3, v7, :cond_0

    .line 228
    :goto_0
    return v2

    .line 221
    :cond_0
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getApplicationPassword()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, passwd:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 223
    const-string v3, "VzwGpsAuthMgr"

    const-string v4, "validateCredentials(): passwd==null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_1
    const-string v2, "VzwGpsAuthMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validateCredentials(): password: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addRequest(Lcom/vzw/location/VzwGpsAuthRequest;)V
    .locals 3
    .parameter "authReq"

    .prologue
    .line 90
    monitor-enter p0

    if-nez p1, :cond_1

    .line 91
    :try_start_0
    const-string v1, "VzwGpsAuthMgr"

    const-string v2, "addRequest(): authReq==null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mReqQ:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mThread:Ljava/lang/Thread;

    .line 104
    iget-object v1, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "VzwGpsAuthMgr"

    const-string v2, "addRequest(): InterruptedException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public removeRequest(Lcom/vzw/location/VzwGpsAuthRequest;)V
    .locals 2
    .parameter "authReq"

    .prologue
    .line 110
    const-string v0, "VzwGpsAuthMgr"

    const-string v1, "canceling auth req..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mReqQ:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const-string v0, "VzwGpsAuthMgr"

    const-string v1, "removeRequest(): not found, already serviced?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 131
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsAuthMgr;->removeRequest()Lcom/vzw/location/VzwGpsAuthRequest;

    move-result-object v2

    .line 132
    .local v2, authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsAuthRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v4

    .line 137
    .local v4, session:Lcom/vzw/location/VzwGpsAppSession;
    if-nez v4, :cond_1

    .line 138
    const-string v5, "VzwGpsAuthMgr"

    const-string v6, "run(): session==null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-direct {p0, v2, v8, v9}, Lcom/vzw/location/VzwGpsAuthMgr;->authDone(Lcom/vzw/location/VzwGpsAuthRequest;ZI)V

    goto :goto_0

    .line 143
    :cond_1
    const-string v5, "VzwGpsAuthMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "starting authentication; uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/vzw/location/VzwGpsAppSession;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/vzw/location/VzwGpsAppSession;->getPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsAuthRequest;->getCfgInit()Lcom/vzw/location/VzwGpsConfigInit;

    move-result-object v3

    .line 147
    .local v3, ci:Lcom/vzw/location/VzwGpsConfigInit;
    if-nez v3, :cond_2

    .line 148
    const-string v5, "VzwGpsAuthMgr"

    const-string v6, "run(): ci==null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0, v2, v8, v9}, Lcom/vzw/location/VzwGpsAuthMgr;->authDone(Lcom/vzw/location/VzwGpsAuthRequest;ZI)V

    goto :goto_0

    .line 154
    :cond_2
    invoke-direct {p0, v3}, Lcom/vzw/location/VzwGpsAuthMgr;->validateCredentials(Lcom/vzw/location/VzwGpsConfigInit;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 155
    const-string v5, "VzwGpsAuthMgr"

    const-string v6, "run(): invalid credentials"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0, v2, v8, v9}, Lcom/vzw/location/VzwGpsAuthMgr;->authDone(Lcom/vzw/location/VzwGpsAuthRequest;ZI)V

    goto :goto_0

    .line 161
    :cond_3
    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    .line 162
    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsConfigInit;->getApplicationId()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-direct {p0, v3, v5}, Lcom/vzw/location/VzwGpsAuthMgr;->setDefaultHost(Lcom/vzw/location/VzwGpsConfigInit;I)V

    .line 166
    :cond_4
    invoke-direct {p0, v3}, Lcom/vzw/location/VzwGpsAuthMgr;->dnsResolve(Lcom/vzw/location/VzwGpsConfigInit;)Ljava/net/InetAddress;

    move-result-object v0

    .line 167
    .local v0, authHost:Ljava/net/InetAddress;
    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcPort()I

    move-result v1

    .line 169
    .local v1, authPort:I
    const-string v6, "VzwGpsAuthMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "auth addr: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v0, :cond_5

    const-string v5, "null"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-nez v0, :cond_6

    .line 174
    const/4 v5, 0x6

    invoke-direct {p0, v2, v8, v5}, Lcom/vzw/location/VzwGpsAuthMgr;->authDone(Lcom/vzw/location/VzwGpsAuthRequest;ZI)V

    goto/16 :goto_0

    .line 169
    :cond_5
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 179
    :cond_6
    iget-object v5, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mSslClient:Lcom/vzw/location/SslClient;

    if-nez v5, :cond_7

    .line 180
    const-string v5, "VzwGpsAuthMgr"

    const-string v6, "run(): mSslClient==null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0, v2, v8, v9}, Lcom/vzw/location/VzwGpsAuthMgr;->authDone(Lcom/vzw/location/VzwGpsAuthRequest;ZI)V

    goto/16 :goto_0

    .line 185
    :cond_7
    iget-object v5, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mSslClient:Lcom/vzw/location/SslClient;

    invoke-virtual {v5, v0, v1}, Lcom/vzw/location/SslClient;->open(Ljava/net/InetAddress;I)Ljavax/net/ssl/SSLSocket;

    move-result-object v5

    if-nez v5, :cond_8

    .line 186
    const/4 v5, 0x4

    invoke-direct {p0, v2, v8, v5}, Lcom/vzw/location/VzwGpsAuthMgr;->authDone(Lcom/vzw/location/VzwGpsAuthRequest;ZI)V

    goto/16 :goto_0

    .line 190
    :cond_8
    invoke-direct {p0, v2}, Lcom/vzw/location/VzwGpsAuthMgr;->authenticate(Lcom/vzw/location/VzwGpsAuthRequest;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 191
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {p0, v2, v5, v6}, Lcom/vzw/location/VzwGpsAuthMgr;->authDone(Lcom/vzw/location/VzwGpsAuthRequest;ZI)V

    .line 196
    :goto_2
    iget-object v5, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mSslClient:Lcom/vzw/location/SslClient;

    invoke-virtual {v5}, Lcom/vzw/location/SslClient;->close()V

    goto/16 :goto_0

    .line 193
    :cond_9
    const/4 v5, 0x3

    invoke-direct {p0, v2, v8, v5}, Lcom/vzw/location/VzwGpsAuthMgr;->authDone(Lcom/vzw/location/VzwGpsAuthRequest;ZI)V

    goto :goto_2
.end method
